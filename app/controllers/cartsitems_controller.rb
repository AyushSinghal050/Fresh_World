class CartsitemsController < ApplicationController
  before_action :set_cartsitem, only: [:show, :edit, :update, :destroy]

  # GET /cartsitems
  # GET /cartsitems.json
  def index
    @cartsitems = Cartsitem.all
  end

  # GET /cartsitems/1
  # GET /cartsitems/1.json
  def show
  end

  # GET /cartsitems/new
  def new
    @cartsitem = Cartsitem.new
  end

  # GET /cartsitems/1/edit
  def edit
  end

  # POST /cartsitems
  # POST /cartsitems.json
  def create
    @cartsitem = Cartsitem.new(cartsitem_params)

    respond_to do |format|
      if @cartsitem.save
        format.html { redirect_to @cartsitem, notice: 'Cartsitem was successfully created.' }
        format.js {   }
        format.json { render :show, status: :created, location: @cartsitem }
      else
        format.html { render :new }
        format.json { render json: @cartsitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cartsitems/1
  # PATCH/PUT /cartsitems/1.json
  def update
    respond_to do |format|
      if @cartsitem.update(cartsitem_params)
        format.html { redirect_to @cartsitem, notice: 'Cartsitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @cartsitem }
      else
        format.html { render :edit }
        format.json { render json: @cartsitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cartsitems/1
  # DELETE /cartsitems/1.json
  def destroy
    @cartsitem.destroy
    respond_to do |format|
      format.html { redirect_to cartsitems_url, notice: 'Cartsitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cartsitem
      @cartsitem = Cartsitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cartsitem_params
      params.require(:cartsitem).permit(:item, :amount, :quantity, :user_id, :fruit_id, :vegetable_id, :cart_id)
    end
end
