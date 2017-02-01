class Scientist < ActiveRecord::Base
  self.primary_key = "scientistId"
  validates :scientistId, :firstName, :lastName, :title, presence: true
  validates :scientistId, uniqueness: true
  validates :photoUrl, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'must be a URL for GIF, JPG or PNG image.'
  }

end
