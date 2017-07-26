class ModeratorsController < ApplicationController
   

	def index
		@offers = Offer.all
	    @carts = Cart.all
	    @vegetables = Vegetable.all
	   
	    @fruits = Fruit.all
	   
	    
	   
	end

	def curr_orders
	    @curr_orders = Order.order('created_at DESC').where(Status: false) 
	    @cartsitems = Cartsitem.all	
	end

	def delivered

	    @delivered_orders = Order.where(Status: true).order('created_at DESC')	
	     @cartsitems = Cartsitem.all	
	end    


end
