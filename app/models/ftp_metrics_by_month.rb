class FtpMetricsByMonth < ActiveRecord::Base
  has_one :ftp_metric, :foreign_key => :id, :primary_key => :file_id

  def self.top_10_month(app)
    if app === 'comptoxdata'
      list = FtpMetricsByMonth.joins("INNER JOIN ftp_metrics ON ftp_metrics.id = ftp_metrics_by_months.file_id")
    else
      list = FtpMetricsByMonth.joins("INNER JOIN ftp_metrics ON ftp_metrics.id = ftp_metrics_by_months.file_id AND ftp_metrics.app = '" + app + "'")
    end
    highMonth = list.max { |a, b| a.month <=> b.month }
    secondMonth = list.where.not(:month => highMonth.month).max { |a, b| a.month <=> b.month }
    toptenlist = list.where(:month => secondMonth.month).order(count: :desc).limit(10)
    topten = toptenlist.map {|file| { name: file.ftp_metric.name, count: file.count } }
    { data: topten, month: secondMonth.month }
  end

  def self.top_10_year(app)
    if app === 'comptoxdata'
      list = FtpMetricsByMonth.joins("INNER JOIN ftp_metrics ON ftp_metrics.id = ftp_metrics_by_months.file_id")
    else
      list = FtpMetricsByMonth.joins("INNER JOIN ftp_metrics ON ftp_metrics.id = ftp_metrics_by_months.file_id AND ftp_metrics.app = '" + app + "'")
    end
    highMonth = list.max { |a, b| a.month <=> b.month }
    highYear = highMonth.month[0..3].to_i - 1
    toptenlist = list.where("month like?", "#{highYear}%").group('ftp_metrics.name').sum(:count).sort_by { |id, count| -count }[0..9]
    topten = toptenlist.map {|id, count| { name: id, count: count } }
    { data: topten, year: highYear.to_s }
  end
end
