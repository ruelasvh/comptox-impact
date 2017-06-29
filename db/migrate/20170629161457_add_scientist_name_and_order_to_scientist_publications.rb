class AddScientistNameAndOrderToScientistPublications < ActiveRecord::Migration
  def change
    add_column :scientist_publications, :scientist_name, :string
    add_column :scientist_publications, :order, :integer
  end
end
