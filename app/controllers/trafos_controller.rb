class TrafosController < ApplicationController
  before_action :set_trafo, only: %i[ show edit update destroy ]

  # GET /trafos or /trafos.json
  def index
    @trafos = Trafo.all
  end

  # GET /trafos/1 or /trafos/1.json
  def show
  end

  # GET /trafos/new
  def new
    @trafo = Trafo.new
  end

  # GET /trafos/1/edit
  def edit
  end

  # POST /trafos or /trafos.json
  def create
    @trafo = Trafo.new(trafo_params)

    respond_to do |format|
      if @trafo.save
        format.html { redirect_to @trafo, notice: "Trafo was successfully created." }
        format.json { render :show, status: :created, location: @trafo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trafo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trafos/1 or /trafos/1.json
  def update
    respond_to do |format|
      if @trafo.update(trafo_params)
        format.html { redirect_to @trafo, notice: "Trafo was successfully updated." }
        format.json { render :show, status: :ok, location: @trafo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trafo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trafos/1 or /trafos/1.json
  def destroy
    @trafo.destroy
    respond_to do |format|
      format.html { redirect_to trafos_url, notice: "Trafo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trafo
      @trafo = Trafo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trafo_params
      params.require(:trafo).permit(:name, :Sn, :U1N, :U2N, :rT, :ZT, :Pferro, :Pcu)
    end
end
