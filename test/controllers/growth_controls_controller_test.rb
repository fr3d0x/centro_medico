require 'test_helper'

class GrowthControlsControllerTest < ActionController::TestCase
  setup do
    @growth_control = growth_controls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:growth_controls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create growth_control" do
    assert_difference('GrowthControl.count') do
      post :create, growth_control: { edad: @growth_control.edad, fecha: @growth_control.fecha, peso: @growth_control.peso, talla: @growth_control.talla }
    end

    assert_redirected_to growth_control_path(assigns(:growth_control))
  end

  test "should show growth_control" do
    get :show, id: @growth_control
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @growth_control
    assert_response :success
  end

  test "should update growth_control" do
    patch :update, id: @growth_control, growth_control: { edad: @growth_control.edad, fecha: @growth_control.fecha, peso: @growth_control.peso, talla: @growth_control.talla }
    assert_redirected_to growth_control_path(assigns(:growth_control))
  end

  test "should destroy growth_control" do
    assert_difference('GrowthControl.count', -1) do
      delete :destroy, id: @growth_control
    end

    assert_redirected_to growth_controls_path
  end
end
