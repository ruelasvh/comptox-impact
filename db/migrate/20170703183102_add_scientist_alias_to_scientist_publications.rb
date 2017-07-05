class AddScientistAliasToScientistPublications < ActiveRecord::Migration
  def change
    add_column :scientist_publications, :scientist_alias, :string
  end
end
