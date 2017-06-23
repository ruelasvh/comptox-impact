class CreateFtpIps < ActiveRecord::Migration
  def change
    create_table :ftp_ips do |t|

      t.string :app, null: false
      t.string :ip, null: false
      t.timestamps null: false
    end
  end
end
