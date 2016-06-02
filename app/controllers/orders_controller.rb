class OrdersController < ApplicationController
  before_filter :initialize_cart

  def index
    @orders = Order.all
  end

  def create
    @order_form = OrderForm.new(
      user: User.new(order_params[:user]),
      cart: @cart
    )
    if @order_form.save
      redirect_to '/', notice: "Thank you for placing your order."
        @cart.empty?
    else
      render 'carts/checkout'
    end
  end

  def notify_user
    @order_form.user.send_reset_password_instruction
    OrderMailer.order_confirmation(@order_form.order).deliver
  end

  def order_params
    params.require(:order_form).permit(
    user: [:name, :address, :city, :country, :postal_code, :email ]
    )
  end

end
