
class Shop

  def initialize name, net_price, count
    @name, @net_price, @count = name, net_price, count

  end
  def total
    @count.each { |val| val.inspect }

  end
  def read
    IO.foreach('shop.txt') do |line|
      data = line.split

      name = data[0]
      price = data[1].to_f
      count = data[2].to_i

      print data

    end

  end
  end
