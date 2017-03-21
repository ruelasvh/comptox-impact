class PublicationsController < ApplicationController
  before_action :validate_params

  # GET /api/publications
  def index
    render(
        status: 200,
        json: Publication.all
    )
  end

  # TODO: check that publication_id is within range
  # GET /api/publications/1
  def show
    render(
        status: 200,
        json: Publication.find(params[:publication_id])
    )
  end

  # GET /api/publications?limit=5&offset=0
  def query
    @offset = 0
    @limit = 8

    if params.has_key?(:offset)
      @offset = params[:offset]
    end
    if params.has_key?(:limit)
      @limit = params[:limit]
    end

    @publications = Publication.where(:publication_id => @offset..@limit)

    render(
        status: 200,
        json: {
            meta: {
                status: "success",
                success: true,
                message: nil,
                warnings: nil,
                selfUrl: "http://comptox.ag.epa.gov/impact/api/publications"
            },
            data: @publications,
            pagination: {
                offset: @offset,
                limit: @limit,
                totalItems: Publication.all.size
            }
        }
    )
  end

  ActionController::Parameters.action_on_unpermitted_parameters = :raise

  rescue_from(ActionController::UnpermittedParameters) do |pme|
    render json: {
        code: 1001,
        message: "The request is malformed.",
        error: { unknown_paramters: pme.params }
    }, status: :bad_request
  end

  private

    def validate_params
      activity = PublicationsHelper::Activity.new(params)
      if !activity.valid?
        render json: {
            code: 1001,
            message: "The request is malformed.",
            error: activity.errors
        }, status: :bad_request
      end
    end

end
