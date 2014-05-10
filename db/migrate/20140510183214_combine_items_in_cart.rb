class CombineItemsInCart < ActiveRecord::Migration
def self.down
# split items with quantity>1 into multiple items
LineItem.where("quantity>1" ).each do |lineitem|
# add individual items
lineitem.quantity.times do
LineItem.create :cart_id=>lineitem.cart_id,
:product_id=>lineitem.product_id, :quantity=>1
end
# remove original item
lineitem.destroy
end
end
end
