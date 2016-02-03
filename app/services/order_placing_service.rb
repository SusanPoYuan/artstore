class OrderPlacingService
	def initialize(cart, order)
		@order = order
		@cart  = cart
	end

	def place_order!
		@order.build_item_cache_form_cart(@cart)
		@order.calculate_total!(@cart)
		@cart.clean!
		OrderMailer.delay.notify_order_placed(@order)
	end
end