class HomeController < ApplicationController
  def index
    # @current_home_rev = Home.order("created_at").last
    render(
        status: 200,
        json: Home.order("created_at").last
    )
  end
end
