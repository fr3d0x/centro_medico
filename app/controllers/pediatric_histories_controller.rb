class PediatricHistoriesController < ApplicationController
  before_action :set_pediatric_history, only: [:show, :edit, :update, :destroy]

  # GET /pediatric_histories
  # GET /pediatric_histories.json
  def index
    @pediatric_histories = PediatricHistory.all
  end

  # GET /pediatric_histories/1
  # GET /pediatric_histories/1.json
  def show
  end

  # GET /pediatric_histories/new
  def new
    @pediatric_history = PediatricHistory.new
  end

  # GET /pediatric_histories/1/edit
  def edit
  end

  # POST /pediatric_histories
  # POST /pediatric_histories.json
  def create
    @pediatric_history = PediatricHistory.new(pediatric_history_params)

    respond_to do |format|
      if @pediatric_history.save
        format.html { redirect_to @pediatric_history, notice: 'Pediatric history was successfully created.' }
        format.json { render :show, status: :created, location: @pediatric_history }
      else
        format.html { render :new }
        format.json { render json: @pediatric_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pediatric_histories/1
  # PATCH/PUT /pediatric_histories/1.json
  def update
    respond_to do |format|
      if @pediatric_history.update(pediatric_history_params)
        format.html { redirect_to @pediatric_history, notice: 'Pediatric history was successfully updated.' }
        format.json { render :show, status: :ok, location: @pediatric_history }
      else
        format.html { render :edit }
        format.json { render json: @pediatric_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pediatric_histories/1
  # DELETE /pediatric_histories/1.json
  def destroy
    @pediatric_history.destroy
    respond_to do |format|
      format.html { redirect_to pediatric_histories_url, notice: 'Pediatric history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pediatric_history
      @pediatric_history = PediatricHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pediatric_history_params
      params.require(:pediatric_history).permit(:edad, :genero, :peso, :talla, :lugar_nacimiento, :lugar_residencia, :padre, :ced_padre, :ced_madre, :madre, :diagnostico_familiar, :antecedentes_prenatales, :antecedentes_natales, :antecedentes_postnatales, :sintomas_generales)
    end
end
