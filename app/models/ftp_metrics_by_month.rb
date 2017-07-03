class FtpMetricsByMonth < ActiveRecord::Base
  has_one :ftp_metric, :foreign_key => :id, :primary_key => :file_id
end
