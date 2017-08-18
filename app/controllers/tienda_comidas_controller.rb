class TiendaComidasController < ApplicationController
  before_action :set_tienda_comida, only: [:show, :edit, :update, :destroy]

  # GET /tienda_comidas
  # GET /tienda_comidas.json
  def index
    @tienda_comidas = TiendaComida.all
  end

  # GET /tienda_comidas/1
  # GET /tienda_comidas/1.json
  def show
  end

  # GET /tienda_comidas/new
  def new
    @tienda_comida = TiendaComida.new
  end

  # GET /tienda_comidas/1/edit
  def edit
  end

  # POST /tienda_comidas
  # POST /tienda_comidas.json
  def create
    @tienda_comida = TiendaComida.new(tienda_comida_params)

    respond_to do |format|
      if @tienda_comida.save
        format.html { redirect_to @tienda_comida, notice: 'Tienda comida was successfully created.' }
        format.json { render :show, status: :created, location: @tienda_comida }
      else
        format.html { render :new }
        format.json { render json: @tienda_comida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tienda_comidas/1
  # PATCH/PUT /tienda_comidas/1.json
  def update
    respond_to do |format|
      if @tienda_comida.update(tienda_comida_params)
        format.html { redirect_to @tienda_comida, notice: 'Tienda comida was successfully updated.' }
        format.json { render :show, status: :ok, location: @tienda_comida }
      else
        format.html { render :edit }
        format.json { render json: @tienda_comida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tienda_comidas/1
  # DELETE /tienda_comidas/1.json
  def destroy
    @tienda_comida.destroy
    respond_to do |format|
      format.html { redirect_to tienda_comidas_url, notice: 'Tienda comida was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tienda_comida
      @tienda_comida = TiendaComida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tienda_comida_params
      params.require(:tienda_comida).permit(:nombre, :foto, :descripcion, :ubicacion)
    end
end
