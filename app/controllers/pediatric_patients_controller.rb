class PediatricPatientsController < ApplicationController
  before_action :set_pediatric_patient, only: [:show, :edit, :update, :destroy, :ya_es_mayor]

  # GET /pediatric_patients
  # GET /pediatric_patients.json
  def index
    @pediatric_patients = PediatricPatient.search(params[:search]).paginate(:per_page => 6, :page => params[:page])
  end

  # GET /pediatric_patients/1
  # GET /pediatric_patients/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
        pdf = PediatricPatientPdf.new(@pediatric_patient)
        send_data pdf.render, filename: "Historia_Pediatrica_de:_#{@pediatric_patient.nombre + ' ' + @pediatric_patient.apellido}.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
  end

  # GET /pediatric_patients/new
  def new
    @pediatric_patient = PediatricPatient.new
    @pediatric_patient.build_pediatric_history
  end

  # GET /pediatric_patients/1/edit
  def edit
    if @pediatric_patient.pediatric_history == nil
      @pediatric_patient.build_pediatric_history
    end
  end

  # POST /pediatric_patients
  # POST /pediatric_patients.json
  def create
    @pediatric_patient = PediatricPatient.new(pediatric_patient_params)

    respond_to do |format|
      if @pediatric_patient.save
        format.html { redirect_to @pediatric_patient, notice: 'Pediatric patient was successfully created.' }
        format.json { render :show, status: :created, location: @pediatric_patient }
      else
        format.html { render :new }
        format.json { render json: @pediatric_patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pediatric_patients/1
  # PATCH/PUT /pediatric_patients/1.json
  def update
    respond_to do |format|
      if @pediatric_patient.update(pediatric_patient_params)
        format.html { redirect_to @pediatric_patient, notice: 'Pediatric patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @pediatric_patient }
      else
        format.html { render :edit }
        format.json { render json: @pediatric_patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pediatric_patients/1
  # DELETE /pediatric_patients/1.json
  def destroy
    @pediatric_patient.destroy
    respond_to do |format|
      format.html { redirect_to pediatric_patients_url, notice: 'Pediatric patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def ya_es_mayor
    redirect_to edit_patient_path(PediatricPatient.ya_mayor(@pediatric_patient))
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pediatric_patient
      @pediatric_patient = PediatricPatient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pediatric_patient_params
      params.require(:pediatric_patient).permit(:id, :nombre, :apellido, :fecha_nacimiento, :fecha_ingreso, :telefono_padre, :telefono_madre, :pediatric_history_attributes => [:id, :edad, :genero, :peso, :talla, :lugar_nacimiento, :lugar_residencia, :padre, :ced_padre, :madre, :ced_madre, :diagnostico_familiar, :antecedentes_prenatales, :antecedentes_natales, :antecedentes_postnatales, :sintomas_generales])
    end
end
