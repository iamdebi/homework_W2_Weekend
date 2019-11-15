require('minitest/autorun')
require('minitest/reporters')
require_relative('../song')
require_relative('../room')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class GuestTest < MiniTest::Test

  def setup
    @song1 = Song.new("Ignorance", "Paramore", "Pop Punk")
    @song2 = Song.new("The Otherside", "Tonight Alive", "Pop Punk")
    @song3 = Song.new("First Date", "Blink-182", "Pop Punk")
    @song4 = Song.new("Hate Conquers All", "Anit-Flag", "Pop Punk")
    @playlist = [@song1, @song2, @song3]

    @room1 = Room.new("Pop Punk", @playlist)

    @guest1 = Guest.new("Jeff")
    @guest2 = Guest.new("Mike")
    @guest3 = Guest.new("Dave")
  end

end
