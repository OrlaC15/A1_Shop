require_relative 'shop.rb'
VAT_RATE = 20

class Product

  def initialize(name, net_price, count)
    @name = name
    @net_price = net_price
    @count = count

  end

  def net_price
    @net_price
  end

  def gross_price
    @gross_price = @net_price * 1.2
  end

  def average_product_price
    @average= gross_price

  end

  def compute_total_value
    @value= @net_price * @count
  end

  def count_products
    @total_products = 0.0
    @total_products = @count
  end

  def to_s
    "#{@name}  €#{gross_price}"
  end


end