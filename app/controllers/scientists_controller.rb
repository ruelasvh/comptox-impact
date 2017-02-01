class ScientistsController < ApplicationController
  def index
    @scientists = Scientist.order(:firstName)
  end
end
