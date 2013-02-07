require 'test_helper'

class LandingControllerTest < ActionController::TestCase
  test "should get bienvenida" do
    get :bienvenida
    assert_response :success
  end

end
