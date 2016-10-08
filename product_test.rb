require 'test/unit'
require_relative 'product.rb'

class ProductTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  attr_reader :net_price

  def setup
    @net_price=100
    @count= 10
    @gross_price =120
  end

  def test_one
    value =@net_price*(100+VAT_RATE)/100
    assert_equal(120, value, "The value is NoT equal")

  end

  def test_two

    value =@net_price*@count
    assert_equal(1000, value, "The value is Not equal")

  end

end