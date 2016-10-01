require_relative 'shop.rb'
require_relative 'product.rb'


class Main

  shop = Shop.new
  IO.foreach('shop.txt') do |line|
    data = line.split

    name = data[0]
    net_price = data[1].to_f
    count = data[2].to_i
    product= Product.new name, net_price, count

    shop.add product
  end



  puts shop.to_s + "\n"
  puts shop.total_products
 puts "Total Value in the shop: #{shop.total_value}"
  #put shop.to_s_average
  # puts "total tax paid is #{shop.total_tax}"
  #  puts "Total quanity of items: #{shop.quantity}%"
end


