require('minitest/autorun')
require('minitest/reporters')
require_relative('../drink')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class DrinkTest < MiniTest::Test

  def setup
  @drink1 = Drink.new("Jack Daniels", 6)
  @drink2 = Drink.new("Old Fashion", 9)
  @drink3 = Drink.new("Southern Comfort", 5.5)
  @drink4 = Drink.new("Cidre", 5)
  @drink5 = Drink.new("Tenents", 4.5)
  @drink6 = Drink.new("Expresso Martini", 7)
  @drink7 = Drink.new("Pressco", 7)
  end

  def test_drink_name
    assert_equal("Cidre", @drink4.name)
  end

  def test_drink_price
    assert_equal(5, @drink4.price)
  end

end
