class MembersController < ApplicationController

	def index
		@orders = Order.all.order('created_at DESC')
		@carts = Cart.all
		@cartsitems = Cartsitem.all
		
	end

end
