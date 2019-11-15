require('minitest/autorun')
require('minitest/reporters')
require_relative('../song')
require_relative('../room')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class RoomTest < MiniTest::Test

  def setup
    @song1 = Song.new("Ignorance", "Paramore", "Pop Punk")
    @song2 = Song.new("The Otherside", "Tonight Alive", "Pop Punk")
    @song3 = Song.new("First Date", "Blink-182", "Pop Punk")
    @song4 = Song.new("Hate Conquers All", "Anit-Flag", "Pop Punk")
    @playlist = [@song1, @song2, @song3]

    @room1 = Room.new("Pop Punk", @playlist)
  end

  def test_room_name
    assert_equal("Pop Punk", @room1.name)
  end

  def test_song_count
    assert_equal(3, @room1.song_count)
  end

  def test_add_song
    @room1.add_song(@song4)
    assert_equal(4, @room1.song_count)
  end

  def test_guest_check_out
  end


end
