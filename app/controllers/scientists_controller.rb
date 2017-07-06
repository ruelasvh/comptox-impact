class ScientistsController < ApplicationController
  before_action :validate_params, only: [:index, :show, :show_photo, :show_publications]

  # GET /api/scientists
  def index
    render(
        status: :ok,
        json: {
            meta: {
                success: 200,
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
    render(
        status: :ok,
        json: {
            meta: {
                success: 200,
                selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/" + params[:scientistId]
            },
            data: Scientist.find(params[:scientistId])
        }
    )

  end

  def create # save new record
    @scientist = Scientist.create(scientist_params)
      if @scientist.save
        render json: @scientist, status: :created
      else
        render json: @scientist.errors, status: :unprocessable_entity
      end
  end

  def update # save changes
    @scientist = Scientist.find(params[:scientistId])
    if @scientist.update(scientist_params)
      render json: @scientist, status: :ok
    else
      render json: @scientist.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @scientist = Scientist.find(params[:scientistId])
    if @scientist.destroy
      render json: @scientist, status: :ok
    else
      render json: @scientist.errors, status: :unprocessable_entity
    end
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
          type: 'image/jpeg',
          disposition: 'inline'
      )
    end
  end

  # GET /api/scientists/1/publications
  def show_publications
    render(
        status: :ok,
        json: {
            meta: {
                success: true,
                selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/" + params[:scientistId] + "/publications"
            },
            data: Scientist.find(params[:scientistId]).publications.all,
            pagination: {
                totalItems: Scientist.find(params[:scientistId]).publications.all.size
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

    def scientist_params
      params.require(:scientist).permit(:scientistId, :firstName, :lastName, :title, :email, :bio)
    end
end
