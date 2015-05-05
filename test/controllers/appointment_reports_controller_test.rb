require 'test_helper'

class AppointmentReportsControllerTest < ActionController::TestCase
  setup do
    @appointment_report = appointment_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appointment_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appointment_report" do
    assert_difference('AppointmentReport.count') do
      post :create, appointment_report: { diagnostico: @appointment_report.diagnostico, informe_medico: @appointment_report.informe_medico, motivo: @appointment_report.motivo, tratamiento: @appointment_report.tratamiento }
    end

    assert_redirected_to appointment_report_path(assigns(:appointment_report))
  end

  test "should show appointment_report" do
    get :show, id: @appointment_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @appointment_report
    assert_response :success
  end

  test "should update appointment_report" do
    patch :update, id: @appointment_report, appointment_report: { diagnostico: @appointment_report.diagnostico, informe_medico: @appointment_report.informe_medico, motivo: @appointment_report.motivo, tratamiento: @appointment_report.tratamiento }
    assert_redirected_to appointment_report_path(assigns(:appointment_report))
  end

  test "should destroy appointment_report" do
    assert_difference('AppointmentReport.count', -1) do
      delete :destroy, id: @appointment_report
    end

    assert_redirected_to appointment_reports_path
  end
end
