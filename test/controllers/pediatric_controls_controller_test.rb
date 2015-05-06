require 'test_helper'

class PediatricControlsControllerTest < ActionController::TestCase
  setup do
    @pediatric_control = pediatric_controls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pediatric_controls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pediatric_control" do
    assert_difference('PediatricControl.count') do
      post :create, pediatric_control: { b.c.g1: @pediatric_control.b.c.g1, b.c.g2: @pediatric_control.b.c.g2, b.c.g3: @pediatric_control.b.c.g3, f_amarilla: @pediatric_control.f_amarilla, observaciones: @pediatric_control.observaciones, otras: @pediatric_control.otras, parotiditis: @pediatric_control.parotiditis, polio1: @pediatric_control.polio1, polio2: @pediatric_control.polio2, polio3: @pediatric_control.polio3, ref_polio1: @pediatric_control.ref_polio1, ref_polio2: @pediatric_control.ref_polio2, ref_polio3: @pediatric_control.ref_polio3, ref_triple1: @pediatric_control.ref_triple1, ref_triple2: @pediatric_control.ref_triple2, ref_triple3: @pediatric_control.ref_triple3, rubeola: @pediatric_control.rubeola, sarampion: @pediatric_control.sarampion, triple1: @pediatric_control.triple1, triple2: @pediatric_control.triple2, triple3: @pediatric_control.triple3, trivalente: @pediatric_control.trivalente }
    end

    assert_redirected_to pediatric_control_path(assigns(:pediatric_control))
  end

  test "should show pediatric_control" do
    get :show, id: @pediatric_control
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pediatric_control
    assert_response :success
  end

  test "should update pediatric_control" do
    patch :update, id: @pediatric_control, pediatric_control: { b.c.g1: @pediatric_control.b.c.g1, b.c.g2: @pediatric_control.b.c.g2, b.c.g3: @pediatric_control.b.c.g3, f_amarilla: @pediatric_control.f_amarilla, observaciones: @pediatric_control.observaciones, otras: @pediatric_control.otras, parotiditis: @pediatric_control.parotiditis, polio1: @pediatric_control.polio1, polio2: @pediatric_control.polio2, polio3: @pediatric_control.polio3, ref_polio1: @pediatric_control.ref_polio1, ref_polio2: @pediatric_control.ref_polio2, ref_polio3: @pediatric_control.ref_polio3, ref_triple1: @pediatric_control.ref_triple1, ref_triple2: @pediatric_control.ref_triple2, ref_triple3: @pediatric_control.ref_triple3, rubeola: @pediatric_control.rubeola, sarampion: @pediatric_control.sarampion, triple1: @pediatric_control.triple1, triple2: @pediatric_control.triple2, triple3: @pediatric_control.triple3, trivalente: @pediatric_control.trivalente }
    assert_redirected_to pediatric_control_path(assigns(:pediatric_control))
  end

  test "should destroy pediatric_control" do
    assert_difference('PediatricControl.count', -1) do
      delete :destroy, id: @pediatric_control
    end

    assert_redirected_to pediatric_controls_path
  end
end
