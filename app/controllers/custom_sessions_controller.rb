class CustomSessionsController < Devise::SessionsController
  after_filter :after_login, only: :create

  def after_login
  	#current_cart ||= Cart.find_by_id(cookies[:cart_id])
  end

end
