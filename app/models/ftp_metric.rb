class FtpMetric < ActiveRecord::Base
  has_many :children, class_name: 'FtpMetric', foreign_key: "parent_id"
  belongs_to :parent, class_name: 'FtpMetric'
end
