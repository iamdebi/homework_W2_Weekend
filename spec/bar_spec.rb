require('minitest/autorun')
require('minitest/reporters')
require_relative('../room')
require_relative('../bar')
require_relative('../drink')
require_relative('../guest')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class BarTest < MiniTest::Test
    def setup
      @room1 = Room.new("Pop Punk", @playlist1, @party, 10, 5, @drinks)
      @room2 = Room.new("Pop Punk", @playlist2, @bigger_party, 15, 3, @drinks)

      @bar = Bar.new(@room1, @room2)
    end

    def test_takens
      @room1.sell_drink(@guest1, @drink2)
      assert_equal(0, @bar.calculate_takens)
    end



end
