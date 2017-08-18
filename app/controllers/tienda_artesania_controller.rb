class TiendaArtesaniaController < ApplicationController
  before_action :set_tienda_artesanium, only: [:show, :edit, :update, :destroy]

  # GET /tienda_artesania
  # GET /tienda_artesania.json
  def index
    @tienda_artesania = TiendaArtesanium.all
  end

  # GET /tienda_artesania/1
  # GET /tienda_artesania/1.json
  def show
  end

  # GET /tienda_artesania/new
  def new
    @tienda_artesanium = TiendaArtesanium.new
  end

  # GET /tienda_artesania/1/edit
  def edit
  end

  # POST /tienda_artesania
  # POST /tienda_artesania.json
  def create
    @tienda_artesanium = TiendaArtesanium.new(tienda_artesanium_params)

    respond_to do |format|
      if @tienda_artesanium.save
        format.html { redirect_to @tienda_artesanium, notice: 'Tienda artesanium was successfully created.' }
        format.json { render :show, status: :created, location: @tienda_artesanium }
      else
        format.html { render :new }
        format.json { render json: @tienda_artesanium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tienda_artesania/1
  # PATCH/PUT /tienda_artesania/1.json
  def update
    respond_to do |format|
      if @tienda_artesanium.update(tienda_artesanium_params)
        format.html { redirect_to @tienda_artesanium, notice: 'Tienda artesanium was successfully updated.' }
        format.json { render :show, status: :ok, location: @tienda_artesanium }
      else
        format.html { render :edit }
        format.json { render json: @tienda_artesanium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tienda_artesania/1
  # DELETE /tienda_artesania/1.json
  def destroy
    @tienda_artesanium.destroy
    respond_to do |format|
      format.html { redirect_to tienda_artesania_url, notice: 'Tienda artesanium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tienda_artesanium
      @tienda_artesanium = TiendaArtesanium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tienda_artesanium_params
      params.require(:tienda_artesanium).permit(:nombre, :foto, :descripcion, :ubicacion)
    end
end
