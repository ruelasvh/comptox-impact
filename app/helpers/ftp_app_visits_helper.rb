module FtpAppVisitsHelper
  class Activity
    include ActiveModel::Validations

    attr_accessor :app

    validates :app, allow_blank: false, numericality: false

    def initialize(params={})
      ActionController::Parameters.new(params).permit(:app)
    end
  end
end
