require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { area: @job.area, enterprise_name: @job.enterprise_name, from: @job.from, position: @job.position, taskdescription: @job.taskdescription, until: @job.until, user_id: @job.user_id, workingnow: @job.workingnow }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test "should show job" do
    get :show, id: @job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job
    assert_response :success
  end

  test "should update job" do
    put :update, id: @job, job: { area: @job.area, enterprise_name: @job.enterprise_name, from: @job.from, position: @job.position, taskdescription: @job.taskdescription, until: @job.until, user_id: @job.user_id, workingnow: @job.workingnow }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
