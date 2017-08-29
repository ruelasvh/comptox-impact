require 'test_helper'

class HomeFlowTest < ActionDispatch::IntegrationTest
  test"can see the home page" do
    get "/"
    assert_response :success
    assert_select "title", "ComptoxImpact"
  end
end
