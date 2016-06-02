class OrderMailer < ActionMailer::Base
  default from: ""

  def order_confirmation
    mail to: order.user.email, subject: "Your order(#{order.id})"
  end
end
