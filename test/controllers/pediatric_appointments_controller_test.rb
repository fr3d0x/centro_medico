require 'test_helper'

class PediatricAppointmentsControllerTest < ActionController::TestCase
  setup do
    @pediatric_appointment = pediatric_appointments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pediatric_appointments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pediatric_appointment" do
    assert_difference('PediatricAppointment.count') do
      post :create, pediatric_appointment: { patients_id: @pediatric_appointment.patients_id, pediatric_patients_id: @pediatric_appointment.pediatric_patients_id, relacion: @pediatric_appointment.relacion, responsable: @pediatric_appointment.responsable, telefono: @pediatric_appointment.telefono }
    end

    assert_redirected_to pediatric_appointment_path(assigns(:pediatric_appointment))
  end

  test "should show pediatric_appointment" do
    get :show, id: @pediatric_appointment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pediatric_appointment
    assert_response :success
  end

  test "should update pediatric_appointment" do
    patch :update, id: @pediatric_appointment, pediatric_appointment: { patients_id: @pediatric_appointment.patients_id, pediatric_patients_id: @pediatric_appointment.pediatric_patients_id, relacion: @pediatric_appointment.relacion, responsable: @pediatric_appointment.responsable, telefono: @pediatric_appointment.telefono }
    assert_redirected_to pediatric_appointment_path(assigns(:pediatric_appointment))
  end

  test "should destroy pediatric_appointment" do
    assert_difference('PediatricAppointment.count', -1) do
      delete :destroy, id: @pediatric_appointment
    end

    assert_redirected_to pediatric_appointments_path
  end
end
