class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.string :size
      t.float :price
      t.string :description

      t.timestamps null: false
    end
  end
end
