require('minitest/autorun')
require('minitest/reporters')
require_relative('../song')
require_relative('../room')
require_relative('../guest')

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

    @guest1 = Guest.new("Jeff", 100)
    @guest2 = Guest.new("Mike", 300)
    @guest3 = Guest.new("Dave", 100)
    @guest4 = Guest.new("Keith", 50)
    @guest5 = Guest.new("Steve", 100)
    @guest6 = Guest.new("Craig", 300)
    @guest7 = Guest.new("Dan", 100)
    @guest8 = Guest.new("Tony", 50)

    @party = [@guest1, @guest2, @guest3]
    @bigger_party = [@guest1, @guest2, @guest3, @guest4, @guest5, @guest6]

    @room1 = Room.new("Pop Punk", @playlist1, @party, 10, 5)
    @room2 = Room.new("Pop Punk", @playlist2, @party, 15, 3)


  end

  def test_room_name
    assert_equal("Pop Punk", @room1.name)
  end

  def test_song_count
    assert_equal(3, @room1.song_count)
  end

  def test_guest_count
    assert_equal(3, @room1.guest_count)
  end

  def test_add_song
    @room1.add_song(@song4)
    assert_equal(4, @room1.song_count)
  end

  def test_guest_check_in
    @room1.guest_check_in(@guest4)
    assert_equal(4, @room1.guest_count)
  end

  def test_guest_check_out
    @room1.guest_check_out(@guest2)
    assert_equal(2, @room1.guest_count)
  end


end
