class PediatricControlsController < ApplicationController
  before_action :set_pediatric_control, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /pediatric_controls
  # GET /pediatric_controls.json
  def index
    @pediatric_controls = PediatricControl.all
  end

  # GET /pediatric_controls/1
  # GET /pediatric_controls/1.json
  def show
    @paciente = @pediatric_control.pediatric_history.pediatric_patient
    respond_to do |format|
      format.html
      format.pdf do
        pdf = PediatricControlPdf.new(@pediatric_control)
        send_data pdf.render, filename: "Controlpediatrico_#{@pediatric_control.id}.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
  end

  # GET /pediatric_controls/new
  def new
    @pediatric_control = PediatricControl.new
    @pediatric_control.pediatric_history_id = params[:pediatric_history_id] if params.has_key?(:pediatric_history_id)
  end

  # GET /pediatric_controls/1/edit
  def edit
    @paciente = @pediatric_control.pediatric_history.pediatric_patient
  end

  # POST /pediatric_controls
  # POST /pediatric_controls.json
  def create
    @pediatric_control = PediatricControl.new(pediatric_control_params)

    respond_to do |format|
      if @pediatric_control.save
        format.html { redirect_to @pediatric_control, notice: 'Control pediatrico creado con exito.' }
        format.json { render :show, status: :created, location: @pediatric_control }
      else
        format.html { render :new }
        format.json { render json: @pediatric_control.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pediatric_controls/1
  # PATCH/PUT /pediatric_controls/1.json
  def update
    respond_to do |format|
      if @pediatric_control.update(pediatric_control_params)
        format.html { redirect_to @pediatric_control, notice: 'Control pediatrico actualizado con exito.' }
        format.json { render :show, status: :ok, location: @pediatric_control }
      else
        format.html { render :edit }
        format.json { render json: @pediatric_control.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pediatric_controls/1
  # DELETE /pediatric_controls/1.json
  def destroy
    @pediatric_control.destroy
    respond_to do |format|
      format.html { redirect_to pediatric_controls_url, notice: 'Control pediatrico borrado con exito..' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pediatric_control
      @pediatric_control = PediatricControl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pediatric_control_params
      params.require(:pediatric_control).permit(:bcg1, :bcg2, :bcg3, :triple1, :triple2, :triple3, :ref_triple1, :ref_triple2, :ref_triple3, :polio1, :polio2, :polio3, :ref_polio1, :ref_polio2, :ref_polio3, :sarampion, :parotiditis, :rubeola, :f_amarilla, :trivalente, :otras, :observaciones, :pediatric_history_id,  :growth_controls_attributes => [:id, :fecha, :peso, :talla])
    end
end
