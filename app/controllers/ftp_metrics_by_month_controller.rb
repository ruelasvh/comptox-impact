class FtpMetricsByMonthController < ApplicationController

  #GET /api/ftpmetricsby/month/:app
  def month
    render status: :ok, json: FtpMetricsByMonth.top_10_month(params[:app])
  end

  #GET /api/ftpmetricsby/year/:app
  def year
    render status: :ok, json: FtpMetricsByMonth.top_10_year(params[:app])
  end
end
