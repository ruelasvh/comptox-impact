class CreateComptoxFtpFolders < ActiveRecord::Migration
  def change
    create_table :comptox_ftp_folders do |t|

      t.integer :parent_id, null: false
      t.string :name, null: false
      t.integer :count, null: false
      t.integer :unique_count, null: false
      t.timestamps null: false
    end
  end
end
