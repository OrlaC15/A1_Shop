require_relative 'shop.rb'
VAT_RATE = 20

class Product

  attr_reader :name
  attr_reader :count

  def initialize(name, net_price, count)
    @name = name
    @net_price = net_price
    @count = count

  end

  def net_price
    @net_price
  end

#def name
#@name
#end
  def gross_price
    @gross_price = @net_price *(100 +VAT_RATE)/100
  end

  def compute_total_value
    @value= @net_price * @count
  end

  def to_s
    "#{@name}  €#{gross_price}"
  end

end