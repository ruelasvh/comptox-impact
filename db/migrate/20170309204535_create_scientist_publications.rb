class CreateScientistPublications < ActiveRecord::Migration
  def change
    create_table :scientist_publications, id:false, comment: "An entity that stores the aggregate of Scientist Publications." do |t|
      t.primary_key :scientist_publication_id
      t.integer :scientist_id
      t.integer :publication_id
      t.boolean :is_primary_author

      t.timestamps null: false
    end

    add_index :scientist_publications, [:scientist_id, :publication_id], unique: true

    add_foreign_key :scientist_publications, :publications, column: :publication_id, primary_key: 'publication_id', on_update: :cascade, on_delete: :nullify
  end
end
