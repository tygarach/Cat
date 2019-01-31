class TuratsinzesController < ApplicationController
  before_action :set_turatsinze, only: [:show, :edit, :update, :destroy]

  # GET /turatsinzes
  # GET /turatsinzes.json
  def index
    @turatsinzes = Turatsinze.all
  end

  # GET /turatsinzes/1
  # GET /turatsinzes/1.json
  def show
  end

  # GET /turatsinzes/new
  def new
    @turatsinze = Turatsinze.new
  end

  # GET /turatsinzes/1/edit
  def edit
  end

  # POST /turatsinzes
  # POST /turatsinzes.json
  def create
    @turatsinze = Turatsinze.new(turatsinze_params)

    respond_to do |format|
      if @turatsinze.save
        format.html { redirect_to @turatsinze, notice: 'Turatsinze was successfully created.' }
        format.json { render :show, status: :created, location: @turatsinze }
      else
        format.html { render :new }
        format.json { render json: @turatsinze.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turatsinzes/1
  # PATCH/PUT /turatsinzes/1.json
  def update
    respond_to do |format|
      if @turatsinze.update(turatsinze_params)
        format.html { redirect_to @turatsinze, notice: 'Turatsinze was successfully updated.' }
        format.json { render :show, status: :ok, location: @turatsinze }
      else
        format.html { render :edit }
        format.json { render json: @turatsinze.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turatsinzes/1
  # DELETE /turatsinzes/1.json
  def destroy
    @turatsinze.destroy
    respond_to do |format|
      format.html { redirect_to turatsinzes_url, notice: 'Turatsinze was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turatsinze
      @turatsinze = Turatsinze.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def turatsinze_params
      params.require(:turatsinze).permit(:firstname, :lastname)
    end
end
