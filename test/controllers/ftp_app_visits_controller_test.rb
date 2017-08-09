require 'test_helper'

class FtpAppVisitsControllerTest < ActionController::TestCase
  test 'should return 422 code if no app parameter is provided' do
    get :show
    assert_response :unprocessable_entity
  end

  test 'should get show' do
    get :show, {:app => 'comptox'}, as: :json
    assert_response :success
  end
end
