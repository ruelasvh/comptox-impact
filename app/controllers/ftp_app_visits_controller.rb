class FtpAppVisitsController < ApplicationController
  before_action :validate_params
  # For custom exception
  class MalformedRequestError < RuntimeError; end

  # GET /api/ftpmetrics/visits?app=comptox
  def show
    if params[:app].present?
      render status: :ok, json: { visits: FtpAppVisit.visits_by_ip(params[:app]) }
    else
      raise MalformedRequestError.new('No parameters or parameter values found')
    end
  end

  # GET /api/ftpmetrics/visits/count?app=comptox
  def count
    if params[:app].present?
      render status: :ok, json: FtpAppVisit.visits_by_ip_count(params[:app])
    else
      raise MalformedRequestError.new('No parameters or parameter values found')
    end
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
