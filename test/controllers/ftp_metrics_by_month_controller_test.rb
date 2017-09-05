require 'test_helper'

class FtpMetricsByMonthControllerTest < ActionController::TestCase
  test 'should get month' do
    get :month, {app: 'comptox'}, as: :json
    assert_equal "month", @controller.action_name
    assert_match "data", @response.body
    assert_match "month", @response.body
    assert_response :success
  end

  test 'should get year' do
    get :year, {app: 'comptox'}, as: :json
    assert_equal "year", @controller.action_name
    assert_match "data", @response.body
    assert_match "year", @response.body
    assert_response :success
  end
end