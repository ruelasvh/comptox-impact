class CreateScientists < ActiveRecord::Migration
  def change
    create_table :scientists, {:id => false} do |t|
      t.integer :scientistId, primary_key: true
      t.string :firstName, null: false
      t.string :lastName, null: false
      t.string :title, null: false
      t.string :email
      t.string :photoUrl
      t.string :orcid
      t.string :researchGate
      t.string :googleScholar
      t.string :linkedIn
      t.string :plumx
      t.string :publons
      t.string :europePmc
      t.text :bio
      t.string :createdBy
      t.string :updatedBy
      t.string :publications
      t.string :presentations
      t.string :projects
      t.string :selfUrl

      t.timestamps null: false
    end
  end
end
