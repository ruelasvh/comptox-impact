class Scientist < ActiveRecord::Base
  self.primary_key = "scientistId"
  has_many :scientist_publications
  has_many :publications, through: :scientist_publications
  validates :firstName, :lastName, presence: true
  validates :scientistId, presence: false, uniqueness: true
  validates :photoUrl, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'must be a URL for GIF, JPG or PNG image.'
  }
end
