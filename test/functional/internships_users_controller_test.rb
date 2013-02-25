require 'test_helper'

class InternshipsUsersControllerTest < ActionController::TestCase
  setup do
    @internships_user = internships_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:internships_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create internships_user" do
    assert_difference('InternshipsUser.count') do
      post :create, internships_user: { internship_id: @internships_user.internship_id, user_id: @internships_user.user_id }
    end

    assert_redirected_to internships_user_path(assigns(:internships_user))
  end

  test "should show internships_user" do
    get :show, id: @internships_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @internships_user
    assert_response :success
  end

  test "should update internships_user" do
    put :update, id: @internships_user, internships_user: { internship_id: @internships_user.internship_id, user_id: @internships_user.user_id }
    assert_redirected_to internships_user_path(assigns(:internships_user))
  end

  test "should destroy internships_user" do
    assert_difference('InternshipsUser.count', -1) do
      delete :destroy, id: @internships_user
    end

    assert_redirected_to internships_users_path
  end
end
