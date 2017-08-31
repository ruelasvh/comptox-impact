class FtpAppVisit < ActiveRecord::Base
  validates :app, presence: true
  validates :ip, presence: true
  validates :timestamp, presence: true

  def self.visits_by_ip(app)
    if app === 'comptoxdata'
      FtpAppVisit.select(:ip,:timestamp).group_by{|ip| ip.ip}.each{|_,v| v.map!{|h| h.timestamp}}
    else
      FtpAppVisit.select(:ip,:timestamp).where(:app => app).group_by{|ip| ip.ip}.each{|_,v| v.map!{|h| h.timestamp}}
    end
  end

  def self.visits_by_ip_count(app)
    getTotalVisits(visits_by_ip(app))
  end
end

def isMoreThan2Years(endDate, startDate)
  Date.parse(endDate).year - Date.parse(startDate).year > 2
end

def getTotalVisits(visits_by_ip)
  new_returning_visits = 0
  total_visits = 0
  visits_by_ip.values.each{ |visits|
    visits.each_with_index { |visit, index|
      if ((index < visits.size - 1) && isMoreThan2Years(visits[index + 1], visit))
        new_returning_visits += 1
      end
    }
    total_visits += visits.count
  }

  total_new_visits = new_returning_visits + visits_by_ip.keys.count
  total_returning_visits = total_visits - total_new_visits

  {"New Users": total_new_visits, "Returning Users": total_returning_visits}
end