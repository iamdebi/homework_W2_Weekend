require('minitest/autorun')
require('minitest/reporters')
require_relative('../song')
require_relative('../room')
require_relative('../guest')
require_relative('../drinks')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class RoomTest < MiniTest::Test

  def setup
    @song1 = Song.new("Ignorance", "Paramore", "Pop Punk")
    @song2 = Song.new("The Otherside", "Tonight Alive", "Pop Punk")
    @song3 = Song.new("First Date", "Blink-182", "Pop Punk")
    @song4 = Song.new("Hate Conquers All", "Anit-Flag", "Pop Punk")
    @song5 = Song.new("American Idiot", "Green Day", "Pop Punk")
    @song6 = Song.new("The Pretender", "Foo Fighters", "Pop Punk")
    @song7 = Song.new("In Too Deep", "Sum 41", "Pop Punk")
    @song8 = Song.new("Alone Together", "Fall Out Boy", "Pop Punk")
    @playlist1 = [@song1, @song2, @song3]
    @playlist2 = [@song4, @song5, @song6]

    @guest1 = Guest.new("Jeff", 100, "Alone Together")
    @guest2 = Guest.new("Mike", 300, "In Too Deep")
    @guest3 = Guest.new("Dave", 100, "The Pretender")
    @guest4 = Guest.new("Keith", 50, "American Idiot")
    @guest5 = Guest.new("Steve", 100, "Hate Conquers All")
    @guest6 = Guest.new("Craig", 300, "First Date")
    @guest7 = Guest.new("Dan", 100, "The Otherside")
    @guest8 = Guest.new("Tony", 50, "Ignorance")

    @party = [@guest1, @guest2, @guest3]
    @bigger_party = [@guest1, @guest2, @guest3, @guest4, @guest5, @guest6]

    @drink1 = Drink.new("Jack Daniels", 6)
    @drink2 = Drink.new("Old Fashion", 9)
    @drink3 = Drink.new("Southern Comfort", 5.5)
    @drink4 = Drink.new("Cidre", 5)
    @drink5 = Drink.new("Tenents", 4.5)
    @drink6 = Drink.new("Expresso Martini", 7)
    @drink7 = Drink.new("Pressco", 7)

    @drinks = [@drink1, @drink2, @drink3, @drink4, @drink5, @drink6, @drink7]

    @room1 = Room.new("Pop Punk", @playlist1, @party, 10, 5, @drinks)
    @room2 = Room.new("Pop Punk", @playlist2, @bigger_party, 15, 3, @drinks)


  end

  # why would guest not work as an array not being passed as an argument

  def test_room_name
    assert_equal("Pop Punk", @room1.name)
  end

  def test_song_count
    assert_equal(3, @room1.song_count)
  end

  def test_guest_count
    assert_equal(3, @room1.guest_count)
  end

  def test_can_acess_guest_Wallet
    assert_equal(50, @guest4.wallet)
  end

  def test_add_song
    @room1.add_song(@song4)
    assert_equal(4, @room1.song_count)
  end

  def test_guest_check_in
    @room1.guest_check_in(@guest4)
    assert_equal(4, @room1.guest_count)
    assert_equal(40, @guest4.wallet)
    assert_equal(40, @room1.total_fees)
  end

  def test_guest_check_out
    @room1.guest_check_out(@guest2)
    assert_equal(2, @room1.guest_count)
  end

  def test_reached_cap
    expected = "sorry, room is too full you will need to find another room"
    result = @room2.reach_cap(@guest2)
    assert_equal(expected, result)
    assert_equal(0, @room2.guest_count)
  end

  def test_reached_cap_allowed
    @room1.reach_cap(@guest4)
    assert_equal(4, @room1.guest_count)
    assert_equal(40, @guest4.wallet)
  end

  def test_fav_song_whoo
    result = @room1.find_fav_song(@guest8)
    assert_equal("Whoo!", result)
  end

  def test_total_fee_tally
    @room1.total_fee_tally
    result = @room1.total_fees
    assert_equal(30, result)
  end



end
