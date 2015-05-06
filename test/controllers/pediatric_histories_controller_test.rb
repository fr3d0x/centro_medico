require 'test_helper'

class PediatricHistoriesControllerTest < ActionController::TestCase
  setup do
    @pediatric_history = pediatric_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pediatric_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pediatric_history" do
    assert_difference('PediatricHistory.count') do
      post :create, pediatric_history: { antecedentes_natales: @pediatric_history.antecedentes_natales, antecedentes_port-natales: @pediatric_history.antecedentes_port-natales, antecedentes_pre-natales: @pediatric_history.antecedentes_pre-natales, diagnostico_familiar: @pediatric_history.diagnostico_familiar, edad: @pediatric_history.edad, genero: @pediatric_history.genero, lugar_nacimiento: @pediatric_history.lugar_nacimiento, lugar_residencia: @pediatric_history.lugar_residencia, madre: @pediatric_history.madre, padre: @pediatric_history.padre, peso: @pediatric_history.peso, sintomas_generales: @pediatric_history.sintomas_generales, talla: @pediatric_history.talla }
    end

    assert_redirected_to pediatric_history_path(assigns(:pediatric_history))
  end

  test "should show pediatric_history" do
    get :show, id: @pediatric_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pediatric_history
    assert_response :success
  end

  test "should update pediatric_history" do
    patch :update, id: @pediatric_history, pediatric_history: { antecedentes_natales: @pediatric_history.antecedentes_natales, antecedentes_port-natales: @pediatric_history.antecedentes_port-natales, antecedentes_pre-natales: @pediatric_history.antecedentes_pre-natales, diagnostico_familiar: @pediatric_history.diagnostico_familiar, edad: @pediatric_history.edad, genero: @pediatric_history.genero, lugar_nacimiento: @pediatric_history.lugar_nacimiento, lugar_residencia: @pediatric_history.lugar_residencia, madre: @pediatric_history.madre, padre: @pediatric_history.padre, peso: @pediatric_history.peso, sintomas_generales: @pediatric_history.sintomas_generales, talla: @pediatric_history.talla }
    assert_redirected_to pediatric_history_path(assigns(:pediatric_history))
  end

  test "should destroy pediatric_history" do
    assert_difference('PediatricHistory.count', -1) do
      delete :destroy, id: @pediatric_history
    end

    assert_redirected_to pediatric_histories_path
  end
end
