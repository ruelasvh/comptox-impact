class PopulateScientistNameToScientistPublications < ActiveRecord::Migration
  def change
    reversible do |direction|
      direction.up {
        ScientistPublication.find_each do |publication|
          if publication.scientist_id.nil?
            next
          end
          scientist = Scientist.find(publication.scientist_id)
          publication.scientist_name = scientist.firstName + ' ' + scientist.lastName
          publication.save!
        end
      }
      direction.down {
        ScientistPublication.find_each do |publication|
          publication.scientist_name = nil
        end
      }
    end
  end
end
