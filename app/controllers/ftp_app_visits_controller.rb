class FtpAppVisitsController < ApplicationController
  before_action :validate_params
  # For custom exception
  class MalformedRequestError < RuntimeError; end

  # GET /api/ftpmetrics/visits?app=comptox
  def show
    if params[:app].present?
      visits_by_ip = FtpAppVisit.select(:ip,:timestamp).where(:app => params[:app]).group_by{|ip| ip.ip}.each{|_,v| v.map!{|h| h.timestamp}}
    else
      raise MalformedRequestError.new('No parameters or parameter values found')
    end

    render status: :ok, json: visits_by_ip
  end

  def count
    if params[:app].present?
      visits_by_ip = FtpAppVisit.select(:ip,:timestamp).where(:app => params[:app]).group_by{|ip| ip.ip}.each{|_,v| v.map!{|h| h.timestamp}}
      app_visits = getTotalVisits(visits_by_ip)
    else
      raise MalformedRequestError.new('No parameters or parameter values found')
    end

    render status: :ok, json: app_visits
  end

  def isMoreThan2Years(endDate, startDate)
    Date.parse(endDate).year - Date.parse(startDate).year > 2
  end

  def getTotalVisits(visits_by_ip)
    new_returning_visits = 0
    total_visits = 0
    visits_by_ip.values.each{ |visits|
      visits.each_with_index { |visit, index|
        if ((index < visits.size - 1) && isMoreThan2Years(visits[index + 1], visit))
          new_returning_visits += 1
        end
      }
      total_visits += visits.count
    }

    total_new_visits = new_returning_visits + visits_by_ip.keys.count
    total_returning_visits = total_visits - total_new_visits

    {"New Users": total_new_visits, "Returning Users": total_returning_visits}
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
