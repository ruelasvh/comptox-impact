class HomeController < ApplicationController
  def index
    @current_home_rev = Home.order("created_at").last
  end
end
