require 'test_helper'

class ReconectarControllerTest < ActionController::TestCase
  test "should get reconectar_form" do
    get :reconectar_form
    assert_response :success
  end

  test "should get reconectar_response" do
    get :reconectar_response
    assert_response :success
  end

end
