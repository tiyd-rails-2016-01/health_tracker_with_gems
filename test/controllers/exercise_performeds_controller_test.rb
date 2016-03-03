require 'test_helper'

class ExercisePerformedsControllerTest < ActionController::TestCase
  setup do
    @exercise_performed = exercise_performeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercise_performeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercise_performed" do
    assert_difference('ExercisePerformed.count') do
      post :create, exercise_performed: { duration: @exercise_performed.duration, exercise: @exercise_performed.exercise }
    end

    assert_redirected_to exercise_performed_path(assigns(:exercise_performed))
  end

  test "should show exercise_performed" do
    get :show, id: @exercise_performed
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercise_performed
    assert_response :success
  end

  test "should update exercise_performed" do
    patch :update, id: @exercise_performed, exercise_performed: { duration: @exercise_performed.duration, exercise: @exercise_performed.exercise }
    assert_redirected_to exercise_performed_path(assigns(:exercise_performed))
  end

  test "should destroy exercise_performed" do
    assert_difference('ExercisePerformed.count', -1) do
      delete :destroy, id: @exercise_performed
    end

    assert_redirected_to exercise_performeds_path
  end
end
