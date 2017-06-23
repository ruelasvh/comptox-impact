class CreateFtpIpInfos < ActiveRecord::Migration
  def change
    create_table :ftp_ip_infos do |t|

      t.string :ip, null: false
      t.string :as
      t.string :zip
      t.string :city
      t.string :region
      t.string :regionname
      t.string :country
      t.string :countrycode
      t.decimal :latitude, precision: 8, scale: 5
      t.decimal :longitude, precision: 8, scale: 5
      t.string :timezone
      t.string :isp
      t.string :organization
      t.timestamps null: false
    end
  end
end
