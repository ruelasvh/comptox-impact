module PublicationsHelper
  class Activity
    include ActiveModel::Validations

    attr_accessor :limit, :offset

    validates :limit, allow_blank: true, numericality: true
    validates :offset, allow_blank: true, numericality: true

    def initialize(params={})
      @limit = params[:limit]
      @offset = params[:offset]
      ActionController::Parameters.new(params).permit(:limit,:offset)
    end

  end
end
