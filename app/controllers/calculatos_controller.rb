class CalculatosController < ApplicationController
  before_action :set_calculato, only: [:show, :edit, :update, :destroy]

  # GET /calculatos
  # GET /calculatos.json
  def index
    @calculatos = Calculato.all
  end

  # GET /calculatos/1
  # GET /calculatos/1.json
  def show
  end

  # GET /calculatos/new
  def new
    @calculato = Calculato.new
  end

  # GET /calculatos/1/edit
  def edit
  end

  # POST /calculatos
  # POST /calculatos.json
  def create
    @calculato = Calculato.new(calculato_params)

    respond_to do |format|
      if @calculato.save
        format.html { redirect_to @calculato, notice: 'Calculato was successfully created.' }
        format.json { render :show, status: :created, location: @calculato }
      else
        format.html { render :new }
        format.json { render json: @calculato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calculatos/1
  # PATCH/PUT /calculatos/1.json
  def update
    respond_to do |format|
      if @calculato.update(calculato_params)
        format.html { redirect_to @calculato, notice: 'Calculato was successfully updated.' }
        format.json { render :show, status: :ok, location: @calculato }
      else
        format.html { render :edit }
        format.json { render json: @calculato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calculatos/1
  # DELETE /calculatos/1.json
  def destroy
    @calculato.destroy
    respond_to do |format|
      format.html { redirect_to calculatos_url, notice: 'Calculato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calculato
      @calculato = Calculato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calculato_params
      params.require(:calculato).permit(:firstname, :firstnumber, :operator, :secondnumber)
    end
end
