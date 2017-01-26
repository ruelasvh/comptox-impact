class Home < ActiveRecord::Base
  validates :title, :intro, presence: true
end
