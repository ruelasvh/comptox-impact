class PublicationType < ActiveRecord::Base
  self.primary_key = "publication_type_id"
  validates :name, :label, :short_description, presence: true
  validates_length_of :name, limit: 64
  validates_length_of :label, limit: 64
  validates_length_of :short_description, limit: 1024
  validates_length_of :long_description, limit: 2048, allow_blank: true
  validates_length_of :created_by, limit: 256, allow_blank: true
  validates_length_of :updated_by, limit: 256, allow_blank: true
end
