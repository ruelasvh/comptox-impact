module PublicationsHelper
  class Activity
    include ActiveModel::Validations

    attr_accessor :limit, :offset, :publication_id

    validates :limit, allow_blank: true, numericality: true
    validates :offset, allow_blank: true, numericality: true
    validates :publication_id, allow_blank: true, numericality:

    def initialize(params={})
      @limit = params[:limit]
      @offset = params[:offset]
      @publication_id = params[:publication_id]
      ActionController::Parameters.new(params).permit(:limit,:offset,:publication_id)
    end

  end
end
