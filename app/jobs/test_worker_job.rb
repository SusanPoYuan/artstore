class TestWorkerJob < ActiveJob::Base
  	queue_as :default

 	def perform(*args)
 		@order = Order.find_by_id(args.at(0))
		OrderMailer.notify_order_placed(@order).deliver!
  	end
end
