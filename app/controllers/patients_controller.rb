class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy, :nuevo_paciente_desde_cita]
  before_action :authenticate_user!

  # GET /patients
  # GET /patients.json
  def nuevo_paciente_desde_cita
  end
  
  def index
    @patients = Patient.search(params[:search]).paginate(:per_page => 6, :page => params[:page])
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
        pdf = PatientPdf.new(@patient)
        send_data pdf.render, filename: "Historial_nro_#{@patient.num_hist_medica.to_s.rjust(4, '0')}.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
  end

  # GET /patients/new
  def new
    @patient = Patient.new
    @patient.build_medical_history
    @patient.num_hist_medica = @patient.medical_history.id.to_s.rjust(4, '0') 
  end

  # GET /patients/1/edit
  def edit
    if @patient.medical_history.blank?
      @hist_medica = @patient.build_medical_history
    end
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)
    respond_to do |format|
      if @patient.save
        @patient.update_attribute(:num_hist_medica, @patient.medical_history.id)
        format.html { redirect_to @patient, notice: 'El paciente ha sido creado con exito.' }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: 'Datos actualizados con exito.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url, notice: 'El paciente ha sido borrado con exito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:id, :cedula, :num_hist_medica, :apellido, :nombre, :fecha_nacimiento, :fecha_ingreso, :estado_civil, :telefono, :sexo, :direccion, :medical_history_attributes => [:id, :tipo_sangre, :peso, :altura, :posee_alergias, :alergias, :fumador, :ocupacion, :antecedentes_lesiones, :antecedentes_familiares, :condicion_medica_actual, :cirugias, :reg_its_sida])
    end
end
