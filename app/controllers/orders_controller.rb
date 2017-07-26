class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @cart = Cart.find(session[:cart_id])
    @order = Order.new(order_params)
    @order.cart_id = @cart.id
    @order.user_id = current_user.id
    @order.Status = false
    @cartsitems = Cartsitem.all.where(cart_id: @cart.id)
     @user = User.find(current_user.id)

    @cartsitems.each do |item|
      if item.fruit_id
        @fruit = Fruit.find(item.fruit_id)
        @fruit.quantity = @fruit.quantity - item.quantity        
        @fruit.save
      end
     if item.vegetable_id
        @vegetable = Vegetable.find(item.vegetable_id)
        @vegetable.quantity = @vegetable.quantity - item.quantity        
        @vegetable.save
      end

    end

    if @user.ordernumber
      @user.ordernumber = @user.ordernumber + 1
      
    else
      @user.ordernumber = 1
    end
    @user.save
     @cart = Cart.create
     session[:cart_id] = @cart.id



    respond_to do |format|
      if @order.save
        format.html { redirect_to '/', notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:Status, :Buyername, :Buyernumber, :Buyeraddress, :cart_id, :user_id)
    end
end
