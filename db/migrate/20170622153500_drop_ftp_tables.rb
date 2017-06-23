class DropFtpTables < ActiveRecord::Migration
  def change
    drop_table :comptox_ftp_folders
    drop_table :dsstox_ftp_folders
  end
end
