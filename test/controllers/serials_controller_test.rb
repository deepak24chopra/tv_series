require 'test_helper'

class SerialsControllerTest < ActionController::TestCase
  setup do
    @serial = serials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:serials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create serial" do
    assert_difference('Serial.count') do
      post :create, serial: { content: @serial.content, image_url: @serial.image_url, name: @serial.name }
    end

    assert_redirected_to serial_path(assigns(:serial))
  end

  test "should show serial" do
    get :show, id: @serial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @serial
    assert_response :success
  end

  test "should update serial" do
    patch :update, id: @serial, serial: { content: @serial.content, image_url: @serial.image_url, name: @serial.name }
    assert_redirected_to serial_path(assigns(:serial))
  end

  test "should destroy serial" do
    assert_difference('Serial.count', -1) do
      delete :destroy, id: @serial
    end

    assert_redirected_to serials_path
  end
end
