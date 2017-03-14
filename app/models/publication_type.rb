class PublicationType < ActiveRecord::Base
  self.primary_key = "publication_type_id"
  has_many :publications
  validates :name, :label, :short_description, presence: true
  validates_length_of :name, maximum: 64
  validates_length_of :label, maximum: 64
  validates_length_of :short_description, maximum: 1024
  validates_length_of :long_description, maximum: 2048, allow_blank: true
  validates_length_of :created_by, maximum: 256, allow_blank: true
  validates_length_of :updated_by, maximum: 256, allow_blank: true
end
