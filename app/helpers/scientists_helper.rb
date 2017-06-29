module ScientistsHelper
  class Activity
    include ActiveModel::Validations

    attr_accessor :scientistId, :firstName, :lastName, :title, :email, :image, :format

    validates :scientistId, allow_blank: true, numericality: true

    validates :format, allow_blank: true, inclusion: {
        in: %w(gif jpg png ),
        message: 'Must be a URL for GIF, JPG or PNG image.'
    }

    def initialize(params={})
      @scientistId = params[:scientistId]
      @firstName = params[:firstName]
      @lastName = params[:lastName]
      @title = params[:title]
      @email = params[:email]
      @format = params[:format]
      @scientistImage = params[:scientistImage]
      ActionController::Parameters.new(params).permit(:scientistId,:firstName,:lastName,:title,:email,:scientistImage,:format)
    end
  end
end
