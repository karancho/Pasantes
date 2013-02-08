require 'test_helper'

class InternshipsTasksControllerTest < ActionController::TestCase
  setup do
    @internships_task = internships_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:internships_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create internships_task" do
    assert_difference('InternshipsTask.count') do
      post :create, internships_task: { internship_id: @internships_task.internship_id, task_id: @internships_task.task_id }
    end

    assert_redirected_to internships_task_path(assigns(:internships_task))
  end

  test "should show internships_task" do
    get :show, id: @internships_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @internships_task
    assert_response :success
  end

  test "should update internships_task" do
    put :update, id: @internships_task, internships_task: { internship_id: @internships_task.internship_id, task_id: @internships_task.task_id }
    assert_redirected_to internships_task_path(assigns(:internships_task))
  end

  test "should destroy internships_task" do
    assert_difference('InternshipsTask.count', -1) do
      delete :destroy, id: @internships_task
    end

    assert_redirected_to internships_tasks_path
  end
end
