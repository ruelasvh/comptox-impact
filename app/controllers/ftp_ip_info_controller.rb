class FtpIpInfoController < ApplicationController
  before_action :validate_params

  class MalformedRequestError < RuntimeError; end

  #GET /api/ftpmetrics/ipinfo?app=comptox&country=US
  def show
    if params.has_key?(:app)
      render status: :ok, json: FtpIpInfo.get_all(params[:app], params[:country])
    else
      raise MalformedRequestError.new('The request is malformed. No parameters found')
    end
  end

  #GET /api/ftpmetrics/ipinfo/counts?app=comptox&country=US
  def counts
    if params.has_key?(:app)
      render status: :ok, json: FtpIpInfo.get_count(params[:app], params[:country])
    else
      raise MalformedRequestError.new('The request is malformed.')
    end
  end

  #GET /api/ftpmetrics/ipinfo/domain?app=comptox&country=US
  def domain
    if params.has_key?(:app)
      render status: :ok, json: FtpIpInfo.get_domains(params[:app])
    else
      raise MalformedRequestError.new('The request is malformed. No parameters found')
    end
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
