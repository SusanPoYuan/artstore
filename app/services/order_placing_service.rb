class OrderPlacingService
	def initalize(cart, order)
		@order = order
		@cart  = cart
	end
	def place_order!
		@order.build_item_cache_form_cart(current_cart)
		@order.calculate_total!(current_cart)
		redirect_to order_path(@order.token)
		current_cart.clean!
		OrderMailer.notify_order_placed(@order).deliver!
	end
end