require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post :create, patient: { apellido: @patient.apellido, cedula: @patient.cedula, direccion: @patient.direccion, edad: @patient.edad, estado_civil: @patient.estado_civil, fecha_ingreso: @patient.fecha_ingreso, fecha_nacimiento: @patient.fecha_nacimiento, nombre: @patient.nombre, num_hist_medica: @patient.num_hist_medica, telefono: @patient.telefono }
    end

    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should show patient" do
    get :show, id: @patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient
    assert_response :success
  end

  test "should update patient" do
    patch :update, id: @patient, patient: { apellido: @patient.apellido, cedula: @patient.cedula, direccion: @patient.direccion, edad: @patient.edad, estado_civil: @patient.estado_civil, fecha_ingreso: @patient.fecha_ingreso, fecha_nacimiento: @patient.fecha_nacimiento, nombre: @patient.nombre, num_hist_medica: @patient.num_hist_medica, telefono: @patient.telefono }
    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete :destroy, id: @patient
    end

    assert_redirected_to patients_path
  end
end
