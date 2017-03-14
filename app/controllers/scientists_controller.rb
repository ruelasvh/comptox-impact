class ScientistsController < ApplicationController
  # GET /api/scientists
  def index
    render(
        status: 200,
        json: Scientist.order(:lastName)
    )
  end

  # GET /api/scientists/1
  def show
    scientistId = params[:scientistId]

    # TODO: check that scientistIds are within range
    if scientistId.blank?
      render(
          status: 400,
          json: { error: 'Expected parameter `scientistId`' }
      )
    else
    render(
        status: 200,
        json: Scientist.find(scientistId)
    )
    end
  end

  # GET /api/scientists/1/photo/1.jpg
  def show_photo
    scientistId = params[:scientistId] + '.' + params[:format]
    send_file(
        Rails.root.join('app', 'assets', 'images', 'api', 'staff', scientistId),
        :type => 'image/jpeg',
        :disposition => 'inline'
    )
  end

  # GET /api/scientists/1/publications
  def show_publications
    scientistId = params[:scientistId]

    #TODO: check that scientistIds are within rance
    if scientistId.blank?
      render(
          status: 400,
          json: { error: 'Expected parameter `scientistId`' }
      )
    else
      render(
          status: 200,
          json: Scientist.find(scientistId).publications.all
      )
    end
  end
end
