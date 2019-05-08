class LecturaContadorsController < ApplicationController
  before_action :set_lectura_contador, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /lectura_contadors
  # GET /lectura_contadors.json
  def index
    @lectura_contadors = LecturaContador.all
  end

  # GET /lectura_contadors/1
  # GET /lectura_contadors/1.json
  def show
  end

  # GET /lectura_contadors/new
  def new
    @lectura_contador = LecturaContador.new
  end

  # GET /lectura_contadors/1/edit
  def edit
  end

  # POST /lectura_contadors
  # POST /lectura_contadors.json
  def create
    @lectura_contador = LecturaContador.new(lectura_contador_params)

    respond_to do |format|
      if @lectura_contador.save
        format.html { redirect_to @lectura_contador, notice: 'Lectura contador was successfully created.' }
        format.json { render :show, status: :created, location: @lectura_contador }
      else
        format.html { render :new }
        format.json { render json: @lectura_contador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lectura_contadors/1
  # PATCH/PUT /lectura_contadors/1.json
  def update
    respond_to do |format|
      if @lectura_contador.update(lectura_contador_params)
        format.html { redirect_to @lectura_contador, notice: 'Lectura contador was successfully updated.' }
        format.json { render :show, status: :ok, location: @lectura_contador }
      else
        format.html { render :edit }
        format.json { render json: @lectura_contador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lectura_contadors/1
  # DELETE /lectura_contadors/1.json
  def destroy
    @lectura_contador.destroy
    respond_to do |format|
      format.html { redirect_to lectura_contadors_url, notice: 'Lectura contador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lectura_contador
      @lectura_contador = LecturaContador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lectura_contador_params
      params.require(:lectura_contador).permit(:Direccion, :NumeroDeContador, :Lectura)
    end
end
