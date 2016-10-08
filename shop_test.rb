require 'test/unit'

class ShopTest < Test::Unit::TestCase


  def setup
    @array = %w[ Scarf Bag Shoes ]
  end

  def test_one
    array = %w[ Scarf Bag Shoes ]
    assert_send([array, :include?, 'Shoes'])

  end

  def test_two
    assert_instance_of String, 'Mary'
  end

  def test_three
    assert_instance_of Array, @array
  end

  def test_four
    File.exist?('shop.txt')
  end
end
