class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :charity_id, :integer
  end
end
