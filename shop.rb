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

 

  end



