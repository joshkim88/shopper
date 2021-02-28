class ApplicationController < ActionController::Base
  before_action :set_current_user


  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end
  end

  before_action :current_cart

  # this allows carts to be filled with the corrent products.
  def current_cart
    @current_cart ||= ShoppingCart.new(token: cart_token)
  end
  helper_method :current_cart

  private

  def cart_token
    return @cart_token unless @cart_token.nil?

    session[:cart_token] ||= SecureRandom.hex(8)
    @cart_token = session[:cart_token]
  end

end
