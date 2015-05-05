require 'test_helper'

class MedicalHistoriesControllerTest < ActionController::TestCase
  setup do
    @medical_history = medical_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medical_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medical_history" do
    assert_difference('MedicalHistory.count') do
      post :create, medical_history: { alergias: @medical_history.alergias, altura: @medical_history.altura, antecedentes_familiares: @medical_history.antecedentes_familiares, antecedentes_lesiones: @medical_history.antecedentes_lesiones, cirugias: @medical_history.cirugias, condicion_medica_actual: @medical_history.condicion_medica_actual, fumador: @medical_history.fumador, ocupacion: @medical_history.ocupacion, peso: @medical_history.peso, posee_alergias: @medical_history.posee_alergias, reg_its_sida: @medical_history.reg_its_sida, tipo_sangre: @medical_history.tipo_sangre }
    end

    assert_redirected_to medical_history_path(assigns(:medical_history))
  end

  test "should show medical_history" do
    get :show, id: @medical_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medical_history
    assert_response :success
  end

  test "should update medical_history" do
    patch :update, id: @medical_history, medical_history: { alergias: @medical_history.alergias, altura: @medical_history.altura, antecedentes_familiares: @medical_history.antecedentes_familiares, antecedentes_lesiones: @medical_history.antecedentes_lesiones, cirugias: @medical_history.cirugias, condicion_medica_actual: @medical_history.condicion_medica_actual, fumador: @medical_history.fumador, ocupacion: @medical_history.ocupacion, peso: @medical_history.peso, posee_alergias: @medical_history.posee_alergias, reg_its_sida: @medical_history.reg_its_sida, tipo_sangre: @medical_history.tipo_sangre }
    assert_redirected_to medical_history_path(assigns(:medical_history))
  end

  test "should destroy medical_history" do
    assert_difference('MedicalHistory.count', -1) do
      delete :destroy, id: @medical_history
    end

    assert_redirected_to medical_histories_path
  end
end
