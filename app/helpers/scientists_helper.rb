module ScientistsHelper
  class Activity
    include ActiveModel::Validations

    attr_accessor :scientistId, :firstName, :lastName, :image, :format

    validates :scientistId, allow_blank: true, numericality: true, inclusion: {
        in: %w(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32),
        message: 'Out of range.'
    }
    validates :format, allow_blank: true, inclusion: {
        in: %w(gif jpg png ),
        message: 'Must be a URL for GIF, JPG or PNG image.'
    }

    def initialize(params={})
      @scientistId = params[:scientistId]
      @firstName = params[:firstName]
      @lastName = params[:lastName]
      @format = params[:format]
      @scientistImage = params[:scientistImage]
      ActionController::Parameters.new(params).permit(:scientistId,:firstName,:lastName,:scientistImage,:format)
    end
  end
end
