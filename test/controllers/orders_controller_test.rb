require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get cancel" do
    get :cancel
    assert_response :success
  end

end
