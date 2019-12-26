class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :cart
  
  def add_to_cart
   
    # Load the cart from the session, or create a new empty cart.
    
    cart << @product.name
   
    # Save the cart in the session.
    session[:cart] = cart
  end

  def cart
    cart = session[:cart] || []
    session[:cart] = cart
  end
end
