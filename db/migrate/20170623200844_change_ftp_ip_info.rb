class ChangeFtpIpInfo < ActiveRecord::Migration
  def change
    rename_column :ftp_ip_infos, :as, :ip_as
  end
end
