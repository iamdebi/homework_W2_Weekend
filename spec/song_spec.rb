require('minitest/autorun')
require('minitest/reporters')
require_relative('../song')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Ignorance", "Paramore", "Pop Rock")
  end

  def test_song_title
    assert_equal("Ignorance", @song1.title)
  end

  def test_song_artist
    assert_equal("Paramore", @song1.artist)
  end

  def test_song_genre
    assert_equal("Pop Rock", @song1.genre)
  end

end
