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
end
