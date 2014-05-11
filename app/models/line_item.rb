class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id
  has_many :line_items, :dependent => :destroy
  belongs_to :order
  belongs_to :product
belongs_to :cart

def total_price
product.price * quantity
end

end
