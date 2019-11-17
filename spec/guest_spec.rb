require('minitest/autorun')
require('minitest/reporters')

require_relative('../guest')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Jeff", 100)
    @guest2 = Guest.new("Mike", 50)
    @guest3 = Guest.new("Dave", 100)
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
