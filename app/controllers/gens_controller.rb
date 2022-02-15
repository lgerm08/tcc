class GensController < ApplicationController
  before_action :set_gen, only: %i[ show edit update destroy ]

  # GET /gens or /gens.json
  def index
    @gens = Gen.all
  end

  # GET /gens/1 or /gens/1.json
  def show
  end

  # GET /gens/new
  def new
    @gen = Gen.new
  end

  # GET /gens/1/edit
  def edit
  end

  # POST /gens or /gens.json
  def create
    @gen = Gen.new(gen_params)

    respond_to do |format|
      if @gen.save
        format.html { redirect_to @gen, notice: "Gen was successfully created." }
        format.json { render :show, status: :created, location: @gen }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gens/1 or /gens/1.json
  def update
    respond_to do |format|
      if @gen.update(gen_params)
        format.html { redirect_to @gen, notice: "Gen was successfully updated." }
        format.json { render :show, status: :ok, location: @gen }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gens/1 or /gens/1.json
  def destroy
    @gen.destroy
    respond_to do |format|
      format.html { redirect_to gens_url, notice: "Gen was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gen
      @gen = Gen.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gen_params
      params.require(:gen).permit(:name, :PF, :SN, :UN, :If0, :Uf0, :Ifn, :Ufn, :Xd, :Xq, :ra, :Pferro, :Pmec, :Psup, :Pven, :k_exm, :k_prl)
    end
end
