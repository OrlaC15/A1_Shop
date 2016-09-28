require_relative 'shop.rb'
require_relative 'product.rb'

class Main

 def initialize(shop, item)
    @shop = shop
   @item= item
  end
  item=Product.new(@name, @net_price,@count )
  shop=Shop.new(@name, @net_price,@count )
  shop.read

end
