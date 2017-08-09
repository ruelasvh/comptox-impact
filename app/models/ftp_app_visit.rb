class FtpAppVisit < ActiveRecord::Base
  validates :app, presence: true
  validates :ip, presence: true
  validates :timestamp, presence: true
end
