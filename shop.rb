require_relative 'product.rb'
class Shop
  include Comparable

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
      total += items.count
    end
  end

  def number_of_products
    @items.count
  end

  def average_products
    @items.inject(0) do |total, items|
      total += items.gross_price/number_of_products

    end
  end


  def total_value
    @items.inject(0) do |total, items|
      total += items.compute_total_value
    end
  end

  def sorting!
    @items.sort! { |x, y| x.name <=> y.name }
  end
end



