class AddProjectNameToPublications < ActiveRecord::Migration
  def change
    add_column :publications, :project, :string
  end
end
