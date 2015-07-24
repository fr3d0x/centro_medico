class GrowthControlsController < ApplicationController
  before_action :set_growth_control, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /growth_controls
  # GET /growth_controls.json
  def index
    @growth_controls = GrowthControl.all
  end

  # GET /growth_controls/1
  # GET /growth_controls/1.json
  def show
  end

  # GET /growth_controls/new
  def new
    @growth_control = GrowthControl.new
  end

  # GET /growth_controls/1/edit
  def edit
  end

  # POST /growth_controls
  # POST /growth_controls.json
  def create
    @growth_control = GrowthControl.new(growth_control_params)

    respond_to do |format|
      if @growth_control.save
        format.html { redirect_to @growth_control, notice: 'Control de crecimiento creado con exito.' }
        format.json { render :show, status: :created, location: @growth_control }
      else
        format.html { render :new }
        format.json { render json: @growth_control.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /growth_controls/1
  # PATCH/PUT /growth_controls/1.json
  def update
    respond_to do |format|
      if @growth_control.update(growth_control_params)
        format.html { redirect_to @growth_control, notice: 'Control de crecimiento actualizado con exito.' }
        format.json { render :show, status: :ok, location: @growth_control }
      else
        format.html { render :edit }
        format.json { render json: @growth_control.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /growth_controls/1
  # DELETE /growth_controls/1.json
  def destroy
    @growth_control.destroy
    respond_to do |format|
      format.html { redirect_to growth_controls_url, notice: 'Control de crecimiento borrado con exito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_growth_control
      @growth_control = GrowthControl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def growth_control_params
      params.require(:growth_control).permit(:fecha, :peso, :talla)
    end
end
