class FtpIpInfo < ActiveRecord::Base

  def self.get_all(app, country)
    if country
      FtpIpInfo.joins("INNER JOIN ftp_ips ON ftp_ips.ip=ftp_ip_infos.ip WHERE app='#{app}' AND countrycode='#{country}'")
    else
      FtpIpInfo.joins("INNER JOIN ftp_ips ON ftp_ips.ip=ftp_ip_infos.ip WHERE app='#{app}'")
    end
  end

  def self.get_count(app, country)
    if country
      if app === 'comptoxdata'
        sql = "SELECT COUNT(*) AS count, CONCAT(ftp_ip_infos.countrycode, '-', ftp_ip_infos.region) AS name FROM ftp_ips " +
            "INNER JOIN ftp_ip_infos ON ftp_ips.ip = ftp_ip_infos.ip WHERE countrycode='#{country}' " +
            "AND ftp_ip_infos.region IS NOT NULL AND ftp_ip_infos.region <> '' GROUP BY ftp_ip_infos.region"
      else
        sql = "SELECT COUNT(*) AS count, CONCAT(ftp_ip_infos.countrycode, '-', ftp_ip_infos.region) AS name FROM ftp_ips " +
            "INNER JOIN ftp_ip_infos ON ftp_ips.ip = ftp_ip_infos.ip WHERE app='#{app}' AND countrycode='#{country}' " +
            "AND ftp_ip_infos.region IS NOT NULL AND ftp_ip_infos.region <> '' GROUP BY ftp_ip_infos.region"
      end
    else
      if app === 'comptoxdata'
        sql = "SELECT COUNT(*) AS count, ftp_ip_infos.countrycode AS name FROM ftp_ips INNER JOIN ftp_ip_infos ON ftp_ips.ip = ftp_ip_infos.ip " +
            "WHERE ftp_ip_infos.countrycode IS NOT NULL AND ftp_ip_infos.countrycode <> '' GROUP BY ftp_ip_infos.countrycode"
      else
        sql = "SELECT COUNT(*) AS count, ftp_ip_infos.countrycode AS name FROM ftp_ips INNER JOIN ftp_ip_infos ON ftp_ips.ip = ftp_ip_infos.ip " +
            "WHERE app='#{app}' AND ftp_ip_infos.countrycode IS NOT NULL AND ftp_ip_infos.countrycode <> '' GROUP BY ftp_ip_infos.countrycode"
      end
    end

    FtpIp.connection.select_all(sql).to_hash
  end

  def self.get_domains(app)
    if app === 'comptoxdata'
      sql = "SELECT COUNT(*) AS count, ftp_ip_infos.organization AS name FROM ftp_ips INNER JOIN ftp_ip_infos ON ftp_ips.ip = ftp_ip_infos.ip " +
          "WHERE ftp_ip_infos.organization IS NOT NULL AND ftp_ip_infos.organization <> '' GROUP BY ftp_ip_infos.organization"
    else
      sql = "SELECT COUNT(*) AS count, ftp_ip_infos.organization AS name FROM ftp_ips INNER JOIN ftp_ip_infos ON ftp_ips.ip = ftp_ip_infos.ip " +
          "WHERE app='#{app}' AND ftp_ip_infos.organization IS NOT NULL AND ftp_ip_infos.organization <> '' GROUP BY ftp_ip_infos.organization"
    end

    FtpIp.connection.select_all(sql).to_hash
  end
end
