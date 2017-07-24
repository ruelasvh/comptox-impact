module FtpIpInfoHelper
  class Activity
    include ActiveModel::Validations

    attr_accessor :app, :country

    validates :app, allow_blank: false, numericality: false
    validates :country, allow_blank: true, numericality: false

    def initialize(params={})
      ActionController::Parameters.new(params).permit(:app, :country)
    end
  end
end