require('minitest/autorun')
require('minitest/reporters')

require_relative('../guest')
require_relative('../drink')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Jeff", 100, "Alone Together")
    @guest2 = Guest.new("Mike", 300, "In Too Deep")
    @guest3 = Guest.new("Dave", 100, "The Pretender")
    @guest4 = Guest.new("Keith", 50, "American Idiot")
    @guest5 = Guest.new("Steve", 100, "Hate Conquers All")
    @guest6 = Guest.new("Craig", 300, "First Date")
    @guest7 = Guest.new("Dan", 100, "The Otherside")
    @guest8 = Guest.new("Tony", 50, "Ignorance")

    @drink1 = Drink.new("Jack Daniels", 6)
    @drink2 = Drink.new("Old Fashion", 9)
    @drink3 = Drink.new("Southern Comfort", 5.5)
    @drink4 = Drink.new("Cidre", 5)
    @drink5 = Drink.new("Tenents", 4.5)
    @drink6 = Drink.new("Expresso Martini", 7)
    @drink7 = Drink.new("Pressco", 7)

    @drinks = [@drink1, @drink2, @drink3, @drink4, @drink5, @drink6, @drink7]

  end

  def test_guest_name
    assert_equal("Jeff", @guest1.name)
  end

  def test_guest_wallet
    assert_equal(100, @guest3.wallet)
  end

  def test_wallet_amend
    assert = @guest3.wallet_amend(10)
    result = @guest3.wallet
    assert_equal(assert, result)
  end

  

end
