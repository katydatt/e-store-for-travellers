class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_items

  def total_price
    self.quantity * self.product.price
  end
end
