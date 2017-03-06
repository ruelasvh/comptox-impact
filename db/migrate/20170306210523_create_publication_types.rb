class CreatePublicationTypes < ActiveRecord::Migration
  def change
    create_table :publication_types, id: false, comment: "An entity that stores the publication types (paper/presentation) data" do |t|
      t.primary_key :publication_type_id
      t.string :name, limit: 64
      t.string :label, limit: 64
      t.string :short_description, limit: 1024
      t.string :long_description, limit: 2048
      t.string :created_by, limit: 256, null: false, default: "System"
      t.string :updated_by, limit: 256

      t.timestamps null: false
    end
  end
end
