class ScientistsController < ApplicationController
  before_action :validate_params

  # GET /api/scientists
  def index
    render(
        status: 200,
        json: {
            meta: {
                status: "success",
                success: true,
                message: nil,
                warnings: nil,
                selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists"
            },
            data: Scientist.order(:lastName),
            pagination: {
                totalItems: Scientist.all.size
            }
        }
    )
  end

  # GET /api/scientists/1
  def show
    scientistId = params[:scientistId]
    render(
        status: 200,
        json: {
            meta: {
                status: "success",
                success: true,
                message: nil,
                warnings: nil,
                selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/"+scientistId
            },
            data: Scientist.find(scientistId)
        }
    )
  end

  # GET /api/scientists/1/photo/1.jpg
  def show_photo
    if params[:scientistId] != params[:scientistImage]
      render(
          json: {
              code: 1001,
              message: "The request is malformed.",
              error: 'Mismatched resources.'
          }, status: :bad_request
      )
    else
    scientistImage = params[:scientistImage] + '.' + params[:format]
      send_file(
          Rails.root.join('app', 'assets', 'images', 'api', 'staff', scientistImage),
          :type => 'image/jpeg',
          :disposition => 'inline'
      )
    end
  end

  # GET /api/scientists/1/publications
  def show_publications
    scientistId = params[:scientistId]

    render(
        status: 200,
        json: {
            meta: {
                status: "success",
                success: true,
                message: nil,
                warnings: nil,
                selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/"+scientistId+"/publications"
            },
            data: Scientist.find(scientistId).publications.all,
            pagination: {
                totalItems: Scientist.find(scientistId).publications.all.size
            }
        }
      )
  end

  private

    def validate_params
      activity = ScientistsHelper::Activity.new(params)
      if !activity.valid?
        render json: {
            code: 1001,
            message: "The request is malformed.",
            error: activity.errors
        }, status: :bad_request
      end
    end
end
