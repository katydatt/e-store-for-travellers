class AddColumnToCharity < ActiveRecord::Migration
  def change
    add_column :charities, :website, :string
  end
end
