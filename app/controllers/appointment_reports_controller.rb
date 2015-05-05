class AppointmentReportsController < ApplicationController
  before_action :set_appointment_report, only: [:show, :edit, :update, :destroy]

  # GET /appointment_reports
  # GET /appointment_reports.json
  def index
    @appointment_reports = AppointmentReport.all
  end

  # GET /appointment_reports/1
  # GET /appointment_reports/1.json
  def show
  end

  # GET /appointment_reports/new
  def new
    @appointment_report = AppointmentReport.new
    @appointment_report.appointment_id = params[:appointment_id] if params.has_key?(:appointment_id)
  end

  # GET /appointment_reports/1/edit
  def edit
  end

  # POST /appointment_reports
  # POST /appointment_reports.json
  def create
    @appointment_report = AppointmentReport.new(appointment_report_params)

    respond_to do |format|
      if @appointment_report.save
        format.html { redirect_to appointments_path, notice: 'Appointment report was successfully created.' }
        format.json { render :show, status: :created, location: @appointment_report }
      else
        format.html { render :new }
        format.json { render json: @appointment_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointment_reports/1
  # PATCH/PUT /appointment_reports/1.json
  def update
    respond_to do |format|
      if @appointment_report.update(appointment_report_params)
        format.html { redirect_to @appointment_report, notice: 'Appointment report was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointment_report }
      else
        format.html { render :edit }
        format.json { render json: @appointment_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointment_reports/1
  # DELETE /appointment_reports/1.json
  def destroy
    @appointment_report.destroy
    respond_to do |format|
      format.html { redirect_to appointment_reports_url, notice: 'Appointment report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment_report
      @appointment_report = AppointmentReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_report_params
      params.require(:appointment_report).permit(:motivo, :diagnostico, :tratamiento, :informe_medico, :appointment_id)
    end
end
