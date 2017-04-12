module PublicationsHelper
  class Activity
    include ActiveModel::Validations

    attr_accessor :page, :limit, :offset, :publication_id

    validates :page, allow_blank: true, numericality: true
    validates :limit, allow_blank: true, numericality: true
    validates :offset, allow_blank: true, numericality: true
    validates :publication_id, allow_blank: true, numericality:

    def initialize(params={})
      @page = params[:page]
      @limit = params[:limit]
      @offset = params[:offset]
      @publication_id = params[:publication_id]
      ActionController::Parameters.new(params).permit(:page,:limit,:offset,:publication_id)
    end

  end
end
