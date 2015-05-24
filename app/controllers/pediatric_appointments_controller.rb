class PediatricAppointmentsController < ApplicationController
  before_action :set_pediatric_appointment, only: [:show, :edit, :update, :destroy, :cancelar, :reactivar]

  # GET /pediatric_appointments
  # GET /pediatric_appointments.json
  def index
    if current_user.tipo == "medico"
      doctor = Doctor.find_by(user_id: current_user.id)
      @pediatric_appointments = PediatricAppointment.search(params[:search]).where(doctor_id: doctor.id).order(:hora).paginate(:per_page => 6, :page => params[:page])
    else
      @pediatric_appointments = PediatricAppointment.search(params[:search]).order(:hora).paginate(:per_page => 4, :page => params[:page])
    end
  end


  # GET /pediatric_appointments/1
  # GET /pediatric_appointments/1.json

  def citas_del_dia
    if current_user.tipo == "medico"
      doctor = Doctor.find_by(user_id: current_user.id)
      @pediatric_appointments = PediatricAppointment.search(params[:search]).where(doctor_id: doctor.id).order(:hora).paginate(:per_page => 4, :page => params[:page])
    else
      @pediatric_appointments = PediatricAppointment.search(params[:search]).order(:hora).paginate(:per_page => 4, :page => params[:page])
    end
  end

  def citas_por_doctor
    @pediatric_appointments = PediatricAppointment.doctor_search(params[:search]).where(doctor_id: params[:doctor_id]).order(:fecha).order(:hora).paginate(:per_page => 4, :page => params[:page])
  end

  def show
  end

  # GET /pediatric_appointments/new
  def new
    @pediatric_appointment = PediatricAppointment.new
    @pediatric_appointment.estado = true
  end

  # GET /pediatric_appointments/1/edit
  def edit
  end

  def cancelar
    @pediatric_appointment.update_attribute(:estado, false)
    redirect_to citas_del_dia_pediatric_appointments_path
  end

  def reactivar
    @pediatric_appointment.update_attribute(:estado, true)
    redirect_to citas_del_dia_pediatric_appointments_path
  end
  # POST /pediatric_appointments
  # POST /pediatric_appointments.json
  def create
    @pediatric_appointment = PediatricAppointment.new(pediatric_appointment_params)
    if params[:cedula_representante].blank?
      flash.keep[:notice] = "Por favor introduzca una cedula valida"
      render :new
    else
      if params[:cedula_representante] =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/
        if PediatricPatient.existente(params[:cedula_representante])
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
          paciente = PediatricPatient.create(telefono_padre: "no indicado", telefono_madre: "no indicado")
          PediatricHistory.create(ced_padre: params[:cedula_representante], ced_madre: params[:cedula_representante], genero: "no indicado", lugar_nacimiento: "no indicado", lugar_residencia: "no indicado", padre: "no indicado", ced_padre: "no indicado", madre: "no indicado", ced_madre: "no indicado", diagnostico_familiar: "no indicado", antecedentes_prenatales: "no indicado", antecedentes_natales: "no indicado", antecedentes_postnatales: "no indicado", sintomas_generales: "no indicado", pediatric_patient_id: paciente.id)
          @pediatric_appointment.pediatric_patient_id = paciente.id
          if @pediatric_appointment.save
            redirect_to edit_pediatric_patient_path(paciente), notice: 'Cita creada con exito.'   
          else
            respond_to do |format|
              format.html { render :new }
              format.json { render json: @pediatric_appointment.errors, status: :unprocessable_entity }
            end
          end
        end
      else
        flash.keep[:notice] = "La cedula debe ser numerica"
        render :new
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
