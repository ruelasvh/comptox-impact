class AddAuthorsToPublications < ActiveRecord::Migration
  def change
    add_column :publications, :scientist_publications, :string
  end
end
