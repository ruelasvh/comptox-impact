class FtpAppVisitsController < ApplicationController
  before_action :validate_params
  # For custom exception
  class MalformedRequestError < RuntimeError; end

  # GET /api/ftpmetrics/visits?app=comptox
  def show
    if params[:app].present?
      sql = "SELECT ftp_app_visits.ip, COUNT(*) AS visits FROM sbox_vruelasr_comptox_impact.ftp_app_visits WHERE app='#{params[:app]}' GROUP BY ftp_app_visits.ip"
      app_visits = FtpAppVisit.connection.select_all(sql).to_hash
    else
      raise MalformedRequestError.new('No parameters or parameter values found')
    end

    render status: :ok, json: app_visits
  end

  ActionController::Parameters.action_on_unpermitted_parameters = :raise

  rescue_from(ActionController::UnpermittedParameters) do |pme|
    render json: {
        error: { unknown_paramters: pme.params }
    }, status: :bad_request
  end

  # simply catch any of my custom exceptions here
  rescue_from(MalformedRequestError) do |e|
    # And render their message back to the user
    render json: { error: e.message }, status: :unprocessable_entity
  end

  private
  def validate_params
    activity = FtpAppVisitsHelper::Activity.new(params)
    if !activity.valid?
      render json: {
          error: activity.errors
      }, status: :bad_request
    end
  end
end
