class FtpIpInfoController < ApplicationController
  before_action :validate_params

  class MalformedRequestError < RuntimeError; end

  #GET /api/ftpmetrics/ipinfo?app=comptox&country=US
  def show
    if params.has_key?(:app) && params.has_key?(:country)
        ip_infos = FtpIpInfo.joins("INNER JOIN ftp_ips ON ftp_ips.ip=ftp_ip_infos.ip WHERE app='#{params[:app]}' AND countrycode='#{params[:country]}'")
    elsif params.has_key?(:app)
      ip_infos = FtpIpInfo.joins("INNER JOIN ftp_ips ON ftp_ips.ip=ftp_ip_infos.ip WHERE app='#{params[:app]}'")
    else
      raise MalformedRequestError.new('The request is malformed. No parameters found')
    end

    render status: :ok, json: ip_infos
  end

  #GET /api/ftpmetrics/ipinfo/counts?app=comptox&country=US
  def counts
    if params.has_key?(:app) && params.has_key?(:country)
      if params[:app] === 'comptoxdata'
        sql = "SELECT COUNT(*) AS count, CONCAT(ftp_ip_infos.countrycode, '-', ftp_ip_infos.region) AS name FROM ftp_ips " +
            "INNER JOIN ftp_ip_infos ON ftp_ips.ip = ftp_ip_infos.ip WHERE countrycode='#{params[:country]}' " +
            "AND ftp_ip_infos.region IS NOT NULL AND ftp_ip_infos.region <> '' GROUP BY ftp_ip_infos.region"
      else
        sql = "SELECT COUNT(*) AS count, CONCAT(ftp_ip_infos.countrycode, '-', ftp_ip_infos.region) AS name FROM ftp_ips " +
            "INNER JOIN ftp_ip_infos ON ftp_ips.ip = ftp_ip_infos.ip WHERE app='#{params[:app]}' AND countrycode='#{params[:country]}' " +
            "AND ftp_ip_infos.region IS NOT NULL AND ftp_ip_infos.region <> '' GROUP BY ftp_ip_infos.region"
      end
      ip_infos = FtpIp.connection.select_all(sql).to_hash
    elsif params.has_key?(:app)
      if params[:app] === 'comptoxdata'
        sql = "SELECT COUNT(*) AS count, ftp_ip_infos.countrycode AS name FROM ftp_ips INNER JOIN ftp_ip_infos ON ftp_ips.ip = ftp_ip_infos.ip " +
            "WHERE ftp_ip_infos.countrycode IS NOT NULL AND ftp_ip_infos.countrycode <> '' GROUP BY ftp_ip_infos.countrycode"
      else
        sql = "SELECT COUNT(*) AS count, ftp_ip_infos.countrycode AS name FROM ftp_ips INNER JOIN ftp_ip_infos ON ftp_ips.ip = ftp_ip_infos.ip " +
            "WHERE app='#{params[:app]}' AND ftp_ip_infos.countrycode IS NOT NULL AND ftp_ip_infos.countrycode <> '' GROUP BY ftp_ip_infos.countrycode"
      end
      ip_infos = FtpIp.connection.select_all(sql).to_hash
    else
      raise MalformedRequestError.new('The request is malformed.')
    end

    render status: :ok, json: ip_infos
  end

  #GET /api/ftpmetrics/ipinfo/domain?app=comptox&country=US
  def domain
    if params.has_key?(:app)
      if params[:app] === 'comptoxdata'
        sql = "SELECT COUNT(*) AS count, ftp_ip_infos.organization AS name FROM ftp_ips INNER JOIN ftp_ip_infos ON ftp_ips.ip = ftp_ip_infos.ip " +
            "WHERE ftp_ip_infos.organization IS NOT NULL AND ftp_ip_infos.organization <> '' GROUP BY ftp_ip_infos.organization"
      else
        sql = "SELECT COUNT(*) AS count, ftp_ip_infos.organization AS name FROM ftp_ips INNER JOIN ftp_ip_infos ON ftp_ips.ip = ftp_ip_infos.ip " +
            "WHERE app='#{params[:app]}' AND ftp_ip_infos.organization IS NOT NULL AND ftp_ip_infos.organization <> '' GROUP BY ftp_ip_infos.organization"
      end
      ip_infos = FtpIp.connection.select_all(sql).to_hash
    else
      raise MalformedRequestError.new('The request is malformed. No parameters found')
    end

    render status: :ok, json: ip_infos
  end

  # simply catch any of my custom exceptions here
  rescue_from(MalformedRequestError) do |e|
    # And render their message back to the user
    render json: { error: e.message }, status: :unprocessable_entity
  end

  # raise error if unpermitted parameters are supplied
  ActionController::Parameters.action_on_unpermitted_parameters = :raise
  rescue_from(ActionController::UnpermittedParameters) do |pme|
    render status: :bad_request, json: {
        message: 'The request is malformed.',
        error: { unknown_paramters: pme.params }
    }
  end

  def validate_params
    activity = FtpIpInfoHelper::Activity.new(params)
    if !activity.valid?
      render status: :bad_request, json: {
          message: 'The request is malformed.',
          error: activity.errors
      }
    end
  end
end
