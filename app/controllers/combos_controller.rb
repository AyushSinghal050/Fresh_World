class CombosController < ApplicationController
  before_action :set_combo, only: [:show, :edit, :update, :destroy]

  # GET /combos
  # GET /combos.json
  def index
    @combos = Combo.all
  end

  # GET /combos/1
  # GET /combos/1.json
  def show
  end

  # GET /combos/new
  def new
    @combo = Combo.new
  end

  # GET /combos/1/edit
  def edit
  end

  # POST /combos
  # POST /combos.json
  def create
    @combo = Combo.new(combo_params)

    respond_to do |format|
      if @combo.save
        format.html { redirect_to @combo, notice: 'Combo was successfully created.' }
        format.json { render :show, status: :created, location: @combo }
      else
        format.html { render :new }
        format.json { render json: @combo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /combos/1
  # PATCH/PUT /combos/1.json
  def update
    respond_to do |format|
      if @combo.update(combo_params)
        format.html { redirect_to @combo, notice: 'Combo was successfully updated.' }
        format.json { render :show, status: :ok, location: @combo }
      else
        format.html { render :edit }
        format.json { render json: @combo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /combos/1
  # DELETE /combos/1.json
  def destroy
    @combo.destroy
    respond_to do |format|
      format.html { redirect_to combos_url, notice: 'Combo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_combo
      @combo = Combo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def combo_params
      params.require(:combo).permit(:fruit_id, :vegetable_id)
    end
end
