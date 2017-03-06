class ScientistsController < ApplicationController
  def index
    # @scientists = Scientist.order(:firstName)
    render(
        status: 200,
        json: Scientist.order(:lastName)
    )
  end

  def show
    scientistId = params[:scientistId]

    # TODO: check that scientistIds are within range
    if scientistId.blank?
      render status: 400, json: { error: 'Expected parameter `scientistId` '}
    else
    render(
        status: 200,
        json: Scientist.find(params[:scientistId])
    )
    end
  end

  # GET /api/scientists/1/photo/1.jpg
  def show_photo
    scientistId = params[:scientistId] + '.jpg'
    send_file Rails.root.join('app', 'assets', 'images', 'api', 'staff', scientistId), :type => 'image/jpeg', :disposition => 'inline'
  end
end
