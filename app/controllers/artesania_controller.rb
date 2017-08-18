class ArtesaniaController < ApplicationController
  before_action :set_artesanium, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except:[ :index, :show]

  # GET /artesania
  # GET /artesania.json
  def index
    @artesania = Artesanium.all
  end

  # GET /artesania/1
  # GET /artesania/1.json
  def show
  end

  # GET /artesania/new
  def new
    @artesanium = Artesanium.new
  end

  # GET /artesania/1/edit
  def edit
  end

  # POST /artesania
  # POST /artesania.json
  def create
    @artesanium = Artesanium.new(artesanium_params)

    respond_to do |format|
      if @artesanium.save
        format.html { redirect_to @artesanium, notice: 'Artesanium was successfully created.' }
        format.json { render :show, status: :created, location: @artesanium }
      else
        format.html { render :new }
        format.json { render json: @artesanium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artesania/1
  # PATCH/PUT /artesania/1.json
  def update
    respond_to do |format|
      if @artesanium.update(artesanium_params)
        format.html { redirect_to @artesanium, notice: 'Artesanium was successfully updated.' }
        format.json { render :show, status: :ok, location: @artesanium }
      else
        format.html { render :edit }
        format.json { render json: @artesanium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artesania/1
  # DELETE /artesania/1.json
  def destroy
    @artesanium.destroy
    respond_to do |format|
      format.html { redirect_to artesania_url, notice: 'Artesanium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artesanium
      @artesanium = Artesanium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artesanium_params
      params.require(:artesanium).permit(:foto, :descripcion, :precio)
    end
end
