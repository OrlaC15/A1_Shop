require_relative 'product.rb'
class Shop

  def initialize
    @items = []
  end

  def add(items)
    @items.push items
  end

#displays the items
  def to_s
    @items.inject('') do |str, items|
      str += items.to_display + "\n"
    end
  end

# gets the total  amount of products   to compute  total value in shop
  def total_products
    @items.inject(0) do |total, items|
      total += items.count
    end
  end

#  calls the gross price  of each product adds  them then divides by the number of products
  def average_products
    @items.inject(0) do |total, items|
      total += items.gross_price/@items.count

    end
  end

# computes the net price by the quantity and adds the values together
  def total_value
    @items.inject(0) do |total, items|
      total += items.compute_total_value
    end
  end

  def sorting!
    @items.sort! { |x, y| x.name <=> y.name }
  end
end



