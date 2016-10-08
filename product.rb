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

#returns net price
  def net_price
    @net_price
  end

#return the gross price
  def gross_price
    @gross_price = @net_price *(100 +VAT_RATE)/100
  end

#returns the ttal value in shop
  def compute_total_value
    @value= @net_price * @count
  end

#displays
  def to_display
    "#{@name}  €#{gross_price}"
  end

end