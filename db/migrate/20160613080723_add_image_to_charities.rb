class AddImageToCharities < ActiveRecord::Migration
  def change
    add_column :charities, :image, :string
  end
end
