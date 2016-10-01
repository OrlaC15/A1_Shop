require_relative 'product.rb'
class Shop

  def initialize
    @items = []
  end

  def add items
    @items.push items
  end

  def sort!
    @items.sort!
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
  def total_value
    @items.inject(0) do |total, items|
      total += items.compute_total_value
    end
  end
  def to_i
    sum=0
    @items.to_enum.with_index(2).each do |count, i|
      sum = sum + count
      puts " Total quatity in shop is  #{sum}"

    end
    def shop_display
      puts " Total value in shop :  #{total_value}"
    end
  end

  end



