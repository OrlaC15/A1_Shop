require_relative 'shop.rb'


VAT_RATE = 20

class Product
  def initialize name, net_price, count
    @name, @net_price, @count = name, net_price, count

  end

  def  net_price
    @net_price = net_price

  end
  def gross_price
    @gross_price = calculate_gross_price
     end
  def calculate_gross_price
    gross_price = @net_price + (@net_price/100 *VAT_RATE)
  end
end