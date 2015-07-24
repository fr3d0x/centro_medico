class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy, :cancelar, :reactivar]
  before_action :authenticate_user!

  # GET /appointments
  # GET /appointments.json
  def index
    if current_user.tipo == "medico"
      doctor = Doctor.find_by(user_id: current_user.id)
      @appointments = Appointment.search(params[:search]).where(doctor_id: doctor.id).order(:hora).paginate(:per_page => 6, :page => params[:page])
    else
      @appointments = Appointment.search(params[:search]).paginate(:per_page => 4, :page => params[:page])
    end
  end

  def citas_del_dia
    if current_user.tipo == "medico"
      doctor = Doctor.find_by(user_id: current_user.id)
      @appointments = Appointment.search(params[:search]).where(doctor_id: doctor.id).order(:hora).paginate(:per_page => 4, :page => params[:page]) 
    else
      @appointments = Appointment.search(params[:search]).order(:hora).paginate(:per_page => 4, :page => params[:page])
    end
    respond_to do |format|
      format.html
      format.pdf do
        pdf = AppointmentsPdf.new(@appointments)
        send_data pdf.render, filename: "citas_del_dia_#{params[:search]}.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
  end

  def citas_por_doctor
    @appointments = Appointment.doctor_search(params[:search]).where(doctor_id: params[:doctor_id]).order(:fecha).order(:hora).paginate(:per_page => 4, :page => params[:page])
  end
  # GET /appointments/1
  # GET /appointments/1.json
  def show
  end

  # GET /appointments/new
  def new
    @appointment = Appointment.new
    @appointment.estado = true
  end

  # GET /appointments/1/edit
  def edit
  end

  def cancelar
    @appointment.update_attribute(:estado, false)
    redirect_to citas_del_dia_appointments_path
  end

  def reactivar
    @appointment.update_attribute(:estado, true)
    redirect_to citas_del_dia_appointments_path
  end

  # POST /appointments
  # POST /appointments.json
  def create
    @appointment = Appointment.new(appointment_params)
    if params[:cedula_paciente].blank?
      flash.keep[:notice] = "Por favor introduzca una cedula valida"
      render :new
    else
      if params[:cedula_paciente] =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/
        if Patient.existente(params[:cedula_paciente])
          @appointment.patient_id = Patient.existente(params[:cedula_paciente]).id
        respond_to do |format|
          if @appointment.save
            format.html { redirect_to @appointment, notice: 'Cita creada con exito.' }
            format.json { render :show, status: :created, location: @appointment }
          else
            format.html { render :new }
            format.json { render json: @appointment.errors, status: :unprocessable_entity }
          end
        end
        else
          paciente = Patient.create(nombre: "no indicado", apellido: "no indicado", telefono: "no indicado", cedula: params[:cedula_paciente], fecha_nacimiento: DateTime.now.to_date)
          @appointment.patient_id = paciente.id
          if @appointment.save
            redirect_to nuevo_paciente_desde_cita_patients_path(:id => paciente.id), notice: 'Cita creada con exito.'   
          else
            respond_to do |format|
            format.html { render :new }
            format.json { render json: @appointment.errors, status: :unprocessable_entity }
            end
          end
        end
      else
      flash.keep[:notice] = "La cedula debe ser numerica"
      render :new
      end
    end
  end

  # PATCH/PUT /appointments/1
  # PATCH/PUT /appointments/1.json
  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to @appointment, notice: 'Cita actualizada con exito.' }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1
  # DELETE /appointments/1.json
  def destroy
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to appointments_url, notice: 'Cita borrada con exito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_params
      params.require(:appointment).permit(:id, :motivo, :estado, :fecha, :hora, :patient_id, :doctor_id)
    end
end
