class EphemerisController < ApplicationController
  before_action :set_ephemeri, only: %i[ show edit update destroy ]

  # GET /ephemeris or /ephemeris.json
  def index
     #binding.pry
     search = params['search'] # esto trae el parametro de busqueda
     @ephemeris = search.present? ? Ephemeri.by_categoria(search['categoria']) : Ephemeri.all
    
  end

  # GET /ephemeris/1 or /ephemeris/1.json
  def show
  end

  # GET /ephemeris/new
  def new
    @ephemeri = Ephemeri.new
  end

  # GET /ephemeris/1/edit
  def edit
  end

  # POST /ephemeris or /ephemeris.json
  def create
    @ephemeri = Ephemeri.new(ephemeri_params)

    respond_to do |format|
      if @ephemeri.save
        format.html { redirect_to @ephemeri, notice: "Ephemeri was successfully created." }
        format.json { render :show, status: :created, location: @ephemeri }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ephemeri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ephemeris/1 or /ephemeris/1.json
  def update
    respond_to do |format|
      if @ephemeri.update(ephemeri_params)
        format.html { redirect_to @ephemeri, notice: "Ephemeri was successfully updated." }
        format.json { render :show, status: :ok, location: @ephemeri }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ephemeri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ephemeris/1 or /ephemeris/1.json
  def destroy
    @ephemeri.destroy
    respond_to do |format|
      format.html { redirect_to ephemeris_url, notice: "Ephemeri was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ephemeri
      @ephemeri = Ephemeri.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ephemeri_params
      params.require(:ephemeri).permit(:fecha, :categoria, :comentario, :imagen, :created_at)
    end
end
