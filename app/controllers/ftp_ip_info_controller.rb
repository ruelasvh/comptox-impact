class FtpIpInfoController < ApplicationController
  before_action :validate_params

  ActionController::Parameters.action_on_unpermitted_parameters = :raise

  rescue_from(ActionController::UnpermittedParameters) do |pme|
    render status: :bad_request, json: {
        message: 'The request is malformed.',
        error: { unknown_paramters: pme.params }
    }
  end

  #GET /api/ftpmetrics/ipinfo?app=comptox&country=US
  def show
    if params.has_key?(:country)
      @ip_infos = FtpIpInfo.joins("INNER JOIN ftp_ips ON ftp_ips.ip=ftp_ip_infos.ip WHERE app='#{params[:app]}' AND countrycode='#{params[:country]}'")
    else
      @ip_infos = FtpIpInfo.joins("INNER JOIN ftp_ips ON ftp_ips.ip=ftp_ip_infos.ip WHERE app='#{params[:app]}'")
    end
    render status: :ok, json: @ip_infos
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
