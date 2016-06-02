class AddColumnToCharities < ActiveRecord::Migration
  def change
    add_column :charities, :seller, :boolean, default: false
  end
end
