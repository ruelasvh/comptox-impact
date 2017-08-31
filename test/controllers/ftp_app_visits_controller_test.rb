require 'test_helper'

class FtpAppVisitsControllerTest < ActionController::TestCase
  test 'should return 422 code if no app parameter is provided' do
    get :show
    assert_equal "show", @controller.action_name
    assert_match "error", @response.body
    assert_response :unprocessable_entity
  end

  test 'should get show' do
    get :show, {app: 'comptox'}, as: :json
    assert_equal "show", @controller.action_name
    assert_match "visits", @response.body
    assert_response :success
  end

  test 'should get visits count' do
    get :count, {app: 'comptox'}, as: :json
    assert_equal "count", @controller.action_name
    assert_match "New Users", @response.body
    assert_match "Returning Users", @response.body
    assert_response :success
  end

  test 'should return 422 if no app parameter is provided' do
    get :count
    assert_equal "count", @controller.action_name
    assert_match "error", @response.body
    assert_response :unprocessable_entity
  end
end
