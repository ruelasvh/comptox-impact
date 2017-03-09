class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications, id:false, comment: "An entity that stores the publication data for a particular paper etc..." do |t|
      t.primary_key :publication_id
      t.string :title, limit: 2048
      t.string :doi, limit: 128
      t.date :published_date
      t.text :citation
      t.text :abstract
      t.integer :publication_type_id
      t.string :publication_url, limit: 2048
      t.string :external_url, limit: 2048
      t.string :created_by, limit: 256, null: false, default: "System"
      t.string :updated_by, limit: 256

      t.timestamps null: false
    end


    reversible do |dir|
      dir.up do
        # add foregin key constraint
        execute <<-SQL
          ALTER TABLE publications
            ADD CONSTRAINT fk_PubPubTypes
              FOREIGN KEY (publication_type_id) REFERENCES publication_types (publication_type_id) ON UPDATE CASCADE ON DELETE SET NULL
        SQL
      end
      dir.down do
        execute <<-SQL
          ALTER TABLE publications
            DROP FOREIGN KEY fk_PubPubTypes
        SQL
      end
    end
  end
end
