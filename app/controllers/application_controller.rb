class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  def initialize_cart
    @cart = Cart.build_from_hash session
  end

  def authenticate_seller!
    authenticate_user!

    unless current_user.seller?
      redirect_to root_path
    end
  end


end
