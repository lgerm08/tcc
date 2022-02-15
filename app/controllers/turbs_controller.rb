class TurbsController < ApplicationController
  before_action :set_turb, only: %i[ show edit update destroy ]

  # GET /turbs or /turbs.json
  def index
    @turbs = Turb.all
  end

  # GET /turbs/1 or /turbs/1.json
  def show
  end

  # GET /turbs/new
  def new
    @turb = Turb.new
  end

  # GET /turbs/1/edit
  def edit
  end

  # POST /turbs or /turbs.json
  def create
    @turb = Turb.new(turb_params)

    respond_to do |format|
      if @turb.save
        format.html { redirect_to @turb, notice: "Turb was successfully created." }
        format.json { render :show, status: :created, location: @turb }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @turb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turbs/1 or /turbs/1.json
  def update
    respond_to do |format|
      if @turb.update(turb_params)
        format.html { redirect_to @turb, notice: "Turb was successfully updated." }
        format.json { render :show, status: :ok, location: @turb }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @turb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turbs/1 or /turbs/1.json
  def destroy
    @turb.destroy
    respond_to do |format|
      format.html { redirect_to turbs_url, notice: "Turb was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turb
      @turb = Turb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def turb_params
      params.require(:turb).permit(:name, :Pmin)
    end
end
