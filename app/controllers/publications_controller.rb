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
        json: {
            meta: {
                status: "success",
                success: true,
                message: nil,
                warnings: nil
            },
            data: Publication.find(params[:publication_id])
        }
    )
  end

  # GET /api/publications?limit=5&offset=0 or /api/publications?page=1
  def query

    total_items = Publication.all.size

    if params.has_key?(:page)
      @page = params[:page]
      @limit = @page.to_i * 10
      @offset = @limit.to_i - 10
    end
    if params.has_key?(:offset)
      @offset = params[:offset]
    end
    if params.has_key?(:limit)
      @limit = params[:limit]
    end

    if @offset.nil? && @limit.nil? && @page.nil?
      @publications = Publication.all
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
                  totalItems: total_items
              }
          }
      )
    elsif !@offset.nil? && !@limit.nil? && @page.nil?
      @publications = Publication.where(:publication_id => @offset..@limit)
      render(
          status: 200,
          json: {
              meta: {
                  status: "success",
                  success: true,
                  message: nil,
                  warnings: nil,
                  selfUrl: "http://comptox.ag.epa.gov/impact/api/publications?limit="+@limit+"&offset="+@offset
              },
              data: @publications,
              pagination: {
                  offset: @offset,
                  limit: @limit,
                  totalItems: total_items
              }
          }
      )
    elsif !@page.nil?
    @publications = Publication.where(:publication_id => @offset..@limit)
      render(
          status: 200,
          json: {
              meta: {
                  status: "success",
                  success: true,
                  message: nil,
                  warnings: nil,
                  selfUrl: "http://comptox.ag.epa.gov/impact/api/publications?page="+@page
              },
              data: @publications,
              pagination: {
                  page: @page,
                  totalPages: (total_items/10.to_f).ceil,
                  totalItems: total_items
              }
          }
      )
    else
      render json: {
          code: 1001,
          message: "The request is malformed.",
          error: { missing_paramters:
                       {
                           offset: @offset,
                           limit: @limit
                       }
          }
      }, status: :bad_request
    end

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
