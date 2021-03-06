class MedicalHistoriesController < ApplicationController
  before_action :set_medical_history, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /medical_histories
  # GET /medical_histories.json
  def index
    @medical_histories = MedicalHistory.all
  end

  # GET /medical_histories/1
  # GET /medical_histories/1.json
  def show
  end

  # GET /medical_histories/new
  def new
    @medical_history = MedicalHistory.new
  end

  # GET /medical_histories/1/edit
  def edit
  end

  # POST /medical_histories
  # POST /medical_histories.json
  def create
    @medical_history = MedicalHistory.new(medical_history_params)

    respond_to do |format|
      if @medical_history.save
        format.html { redirect_to @medical_history, notice: 'Historial medico creado con exito.' }
        format.json { render :show, status: :created, location: @medical_history }
      else
        format.html { render :new }
        format.json { render json: @medical_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_histories/1
  # PATCH/PUT /medical_histories/1.json
  def update
    respond_to do |format|
      if @medical_history.update(medical_history_params)
        format.html { redirect_to @medical_history, notice: 'Historial medico actualizado con exito.' }
        format.json { render :show, status: :ok, location: @medical_history }
      else
        format.html { render :edit }
        format.json { render json: @medical_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_histories/1
  # DELETE /medical_histories/1.json
  def destroy
    @medical_history.destroy
    respond_to do |format|
      format.html { redirect_to medical_histories_url, notice: 'Historial medico borrado con exito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_history
      @medical_history = MedicalHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medical_history_params
      params.require(:medical_history).permit(:tipo_sangre, :peso, :altura, :posee_alergias, :alergias, :fumador, :ocupacion, :antecedentes_lesiones, :antecedentes_familiares, :condicion_medica_actual, :cirugias, :reg_its_sida, :patient_id)
    end
end
