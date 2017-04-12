class RecreateScientists < ActiveRecord::Migration
  def change
    create_table :scientists, id:false do |t|
      t.primary_key :scientistId
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
      t.string :vivo
      t.string :microsoftAcademic
      t.string :otherDetails
      t.text :bio
      t.string :createdBy
      t.string :updatedBy
      t.string :publications
      t.string :presentations
      t.string :projects
      t.string :selfUrl

      t.timestamps null: false
    end

    add_foreign_key :scientist_publications, :scientists, column: :scientist_id, primary_key: 'scientistId', on_update: :cascade, on_delete: :nullify
  end
end
