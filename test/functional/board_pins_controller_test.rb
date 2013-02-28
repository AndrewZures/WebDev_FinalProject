require 'test_helper'

class BoardPinsControllerTest < ActionController::TestCase
  setup do
    @board_pin = board_pins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:board_pins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create board_pin" do
    assert_difference('BoardPin.count') do
      post :create, board_pin: {  }
    end

    assert_redirected_to board_pin_path(assigns(:board_pin))
  end

  test "should show board_pin" do
    get :show, id: @board_pin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @board_pin
    assert_response :success
  end

  test "should update board_pin" do
    put :update, id: @board_pin, board_pin: {  }
    assert_redirected_to board_pin_path(assigns(:board_pin))
  end

  test "should destroy board_pin" do
    assert_difference('BoardPin.count', -1) do
      delete :destroy, id: @board_pin
    end

    assert_redirected_to board_pins_path
  end
end
