require('minitest/autorun')
require('minitest/reporters')

require_relative('../guest')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Jeff")
    @guest2 = Guest.new("Mike")
    @guest3 = Guest.new("Dave")
  end

  def test_guest_name
    assert_equal("Jeff", @guest1.name)
  end

end
