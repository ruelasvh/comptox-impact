require 'test_helper'

class FtpIpInfoControllerTest < ActionController::TestCase
  test 'show should return 422 code if no app parameter is provided' do
    get :show
    assert_equal "show", @controller.action_name
    assert_match "error", @response.body
    assert_response :unprocessable_entity
  end

  test 'should get show' do
    get :show, {app: 'comptox'}, as: :json
    assert_equal "show", @controller.action_name
    assert_match "regionname", @response.body
    assert_response :success
  end

  test 'should get ip info counts' do
    get :counts, {app: 'comptox'}, as: :json
    assert_equal "counts", @controller.action_name
    assert_match "[]", @response.body
    assert_response :success
  end

  test 'counts should return 422 if no app parameter is provided' do
    get :counts
    assert_equal "counts", @controller.action_name
    assert_match "error", @response.body
    assert_response :unprocessable_entity
  end

  test 'domain should return 422 code if no app parameter is provided' do
    get :domain
    assert_equal "domain", @controller.action_name
    assert_match "error", @response.body
    assert_response :unprocessable_entity
  end

  test 'should get domain' do
    get :domain, {app: 'comptox'}, as: :json
    assert_equal "domain", @controller.action_name
    assert_match "[]", @response.body
    assert_response :success
  end
end
