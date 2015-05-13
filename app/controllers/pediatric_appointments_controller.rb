class PediatricAppointmentsController < ApplicationController
  before_action :set_pediatric_appointment, only: [:show, :edit, :update, :destroy]

  # GET /pediatric_appointments
  # GET /pediatric_appointments.json
  def index
    @pediatric_appointments = PediatricAppointment.all
  end

  # GET /pediatric_appointments/1
  # GET /pediatric_appointments/1.json
  def show
  end

  # GET /pediatric_appointments/new
  def new
    @pediatric_appointment = PediatricAppointment.new
  end

  # GET /pediatric_appointments/1/edit
  def edit
  end

  # POST /pediatric_appointments
  # POST /pediatric_appointments.json
  def create
    @pediatric_appointment = PediatricAppointment.new(pediatric_appointment_params)
    if params[:cedula_representante].blank?
      flash.keep[:notice] = "Por favor introduzca una cedula valida"
      render :new
    elsif PediatricPatient.existente(params[:cedula_representante])
      @pediatric_appointment.pediatric_patient_id = PediatricPatient.existente(params[:cedula_representante]).id
    respond_to do |format|
      if @pediatric_appointment.save
        format.html { redirect_to @pediatric_appointment, notice: 'Cita creada con exito.' }
        format.json { render :show, status: :created, location: @pediatric_appointment }
      else
        format.html { render :new }
        format.json { render json: @pediatric_appointment.errors, status: :unprocessable_entity }
      end
    end
    else
      paciente = PediatricPatient.create()
      @pediatric_appointment.pediatric_patient_id = paciente.id
      if @pediatric_appointment.save
        redirect_to edit_pediatric_patient_path(paciente), notice: 'Cita creada con exito.'   
      else
        format.html { render :new }
        format.json { render json: @pediatric_appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pediatric_appointments/1
  # PATCH/PUT /pediatric_appointments/1.json
  def update
    respond_to do |format|
      if @pediatric_appointment.update(pediatric_appointment_params)
        format.html { redirect_to @pediatric_appointment, notice: 'Pediatric appointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @pediatric_appointment }
      else
        format.html { render :edit }
        format.json { render json: @pediatric_appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pediatric_appointments/1
  # DELETE /pediatric_appointments/1.json
  def destroy
    @pediatric_appointment.destroy
    respond_to do |format|
      format.html { redirect_to pediatric_appointments_url, notice: 'Pediatric appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pediatric_appointment
      @pediatric_appointment = PediatricAppointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pediatric_appointment_params
      params.require(:pediatric_appointment).permit(:fecha, :hora, :motivo, :responsable, :telefono, :relacion, :patient_id, :pediatric_patient_id, :doctor_id)
    end
end
