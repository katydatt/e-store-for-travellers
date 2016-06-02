class OrderItem < ActiveRecord::Base

  belongs_to :product
  belongs_to :order

  def total_price
    self.quatity * self.product.price
  end
end
