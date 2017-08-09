class CreateFtpAppVisits < ActiveRecord::Migration
  def change
    create_table :ftp_app_visits do |t|
      t.string :app, limit: 128, null: false
      t.string :ip, limit: 128, null: false
      t.string :timestamp, null: false
      t.timestamps null: false
    end
  end
end
