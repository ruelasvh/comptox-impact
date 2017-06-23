class RecreateFtpTables < ActiveRecord::Migration
  def change
    create_table :ftp_metrics do |t|

      t.integer :parent_id, null: false
      t.string :app, null: false
      t.string :name, null: false
      t.boolean :folder, null: false
      t.integer :count, null: false
      t.integer :unique_count, null: false

      t.timestamps null: false
    end
  end
end
