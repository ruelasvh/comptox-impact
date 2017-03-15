class PublicationsController < ApplicationController
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
    @limit = 5

    if params.has_key?(:offset)
      @offset = params[:offset]
    end
    if params.has_key?(:limit)
      @limit = params[:limit]
    end

    @publications = Publication.where(:publication_id => @offset..@limit)

    render(
        status: 200,
        json: @publications
    )
  end

end
