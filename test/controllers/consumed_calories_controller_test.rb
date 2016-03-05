require 'test_helper'

class ConsumedCaloriesControllerTest < ActionController::TestCase
  setup do
    @calorie = consumed_calories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create calorie" do
    assert_difference('ConsumedCalory.count') do
      post :create, consumed_calory: { total: @calorie.total, consumed_on: @calorie.consumed_on }
    end

    assert_redirected_to consumed_calory_path(assigns(:calorie))
  end

  test "should show calorie" do
    get :show, id: @calorie
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @calorie
    assert_response :success
  end

  test "should update calorie" do
    patch :update, id: @calorie, consumed_calory: { total: @calorie.total, consumed_on: @calorie.consumed_on }
    assert_redirected_to consumed_calory_path(assigns(:calorie))
  end

  test "should destroy calorie" do
    assert_difference('ConsumedCalory.count', -1) do
      delete :destroy, id: @calorie
    end

    assert_redirected_to consumed_calories_path
  end
end
