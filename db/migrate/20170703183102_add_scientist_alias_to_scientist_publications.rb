class AddScientistAliasToScientistPublications < ActiveRecord::Migration
  def change
    add_column :scientist_publications, :scientist_alias, :string
    reversible do |direction|
      direction.up {
        ScientistPublication.find_each do |publication|
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
