class ScientistPublication < ActiveRecord::Base
  self.primary_key = "scientist_publication_id"
  belongs_to :publication
  belongs_to :scientist
end
