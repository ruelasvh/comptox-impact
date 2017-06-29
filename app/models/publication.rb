class Publication < ActiveRecord::Base
  self.primary_key = "publication_id"
  default_scope { order('published_date desc') }
  belongs_to :publication_type
  has_many :scientist_publications
  has_many :scientists, through: :scientist_publications
  validates :published_date, :citation, :publication_url, presence: true
  validates_length_of :title, maximum: 2048, message: "title too long"
  validates_length_of :doi, maximum: 128, allow_blank: true
  validates_length_of :citation, maximum: 65535, message: "citation too long"
  validates_length_of :abstract, maximum: 65535, allow_blank: true
  validates_length_of :publication_url, maximum: 2048, message: "publication url too long"
  validates_length_of :external_url, maximum: 2048, allow_blank: true
  validates_length_of :created_by, maximum: 256, allow_blank: true
  validates_length_of :updated_by, maximum: 256, allow_blank: true
end
