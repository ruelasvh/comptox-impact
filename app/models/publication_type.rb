class PublicationType < ActiveRecord::Base
  self.primary_key = "publication_type_id"
  validates :name, :label, :short_description, presence: true
end
