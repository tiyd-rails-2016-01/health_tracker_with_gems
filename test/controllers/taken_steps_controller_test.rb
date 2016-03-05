require 'test_helper'

class TakenStepsControllerTest < ActionController::TestCase
  setup do
    @taken_step = taken_steps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taken_steps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taken_step" do
    assert_difference('TakenStep.count') do
      post :create, taken_step: { count: @taken_step.count, taken_step_date_on: @taken_step.done_on }
    end

    assert_redirected_to taken_step_path(assigns(:taken_step))
  end

  test "should show steps taken" do
    get :show, id: @taken_step
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taken_step
    assert_response :success
  end

  test "should update steps taken" do
    patch :update, id: @taken_step, taken_step: { count: @taken_step.count, done_on: @taken_step.done_on }
    assert_redirected_to taken_step_path(assigns(:taken_step))
  end

  test "should destroy steps" do
    assert_difference('TakenStep.count', -1) do
      delete :destroy, id: @taken_step
    end

    assert_redirected_to taken_steps_path
  end
end
