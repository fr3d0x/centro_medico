require 'test_helper'

class PediatricPatientsControllerTest < ActionController::TestCase
  setup do
    @pediatric_patient = pediatric_patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pediatric_patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pediatric_patient" do
    assert_difference('PediatricPatient.count') do
      post :create, pediatric_patient: { apellido: @pediatric_patient.apellido, fecha_ingerso: @pediatric_patient.fecha_ingerso, fecha_nacimiento: @pediatric_patient.fecha_nacimiento, nombre: @pediatric_patient.nombre, telefono_madre: @pediatric_patient.telefono_madre, telefono_padre: @pediatric_patient.telefono_padre }
    end

    assert_redirected_to pediatric_patient_path(assigns(:pediatric_patient))
  end

  test "should show pediatric_patient" do
    get :show, id: @pediatric_patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pediatric_patient
    assert_response :success
  end

  test "should update pediatric_patient" do
    patch :update, id: @pediatric_patient, pediatric_patient: { apellido: @pediatric_patient.apellido, fecha_ingerso: @pediatric_patient.fecha_ingerso, fecha_nacimiento: @pediatric_patient.fecha_nacimiento, nombre: @pediatric_patient.nombre, telefono_madre: @pediatric_patient.telefono_madre, telefono_padre: @pediatric_patient.telefono_padre }
    assert_redirected_to pediatric_patient_path(assigns(:pediatric_patient))
  end

  test "should destroy pediatric_patient" do
    assert_difference('PediatricPatient.count', -1) do
      delete :destroy, id: @pediatric_patient
    end

    assert_redirected_to pediatric_patients_path
  end
end
