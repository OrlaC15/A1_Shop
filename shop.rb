require_relative 'product.rb'
class Shop

  def initialize
    @items = []
  end

  def add items
    @items.push items
  end

  def to_s
    @items.inject("") do |str, items|
      str += items.to_s + "\n"
    end
  end

  def total_products
    @items.inject(0) do |total, items|
      total += items.count_products
    end
  end

  def average_products
    @items.inject(0) do |total, items|
      total += items.average_product_price
    end
  end

  def total_value
    @items.inject(0) do |total, items|
      total += items.compute_total_value
    end
  end


end



