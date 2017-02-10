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
end
