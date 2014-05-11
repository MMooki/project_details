class AddOrderIdToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :ord_id, :integer
  end
end
