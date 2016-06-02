class AddSellerToUser < ActiveRecord::Migration
  def change
    add_column :users, :seller, :boolean ,default: true
  end
end
