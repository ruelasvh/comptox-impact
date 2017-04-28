class DataToolsController < ApplicationController
  require 'net/http'

  def get_google_token

      http = Net::HTTP.new("comptox.ag.epa.gov")
      request = Net::HTTP::Get.new("/impact/api/publications/1")
      response = http.request(request)

      render(
          status: 200,
          json: response.body
      )

  end
end
