require 'test_helper'

class PassengersControllerTest < ActionController::TestCase
  setup do
    @passenger = passengers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:passengers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create passenger" do
    assert_difference('Passenger.count') do
      post :create, passenger: { c_count: @passenger.c_count, debt: @passenger.debt, g_count: @passenger.g_count, location: @passenger.location, money: @passenger.money, name: @passenger.name, p_count: @passenger.p_count, starCount: @passenger.starCount }
    end

    assert_redirected_to passenger_path(assigns(:passenger))
  end

  test "should show passenger" do
    get :show, id: @passenger
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @passenger
    assert_response :success
  end

  test "should update passenger" do
    patch :update, id: @passenger, passenger: { c_count: @passenger.c_count, debt: @passenger.debt, g_count: @passenger.g_count, location: @passenger.location, money: @passenger.money, name: @passenger.name, p_count: @passenger.p_count, starCount: @passenger.starCount }
    assert_redirected_to passenger_path(assigns(:passenger))
  end

  test "should destroy passenger" do
    assert_difference('Passenger.count', -1) do
      delete :destroy, id: @passenger
    end

    assert_redirected_to passengers_path
  end
end
