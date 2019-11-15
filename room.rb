class Room

attr_reader :name, :songs, :guests

  def initialize(name, songs)
    @name = name
    @songs = songs
    @guests = guests
  end

  def add_song(song)
    @songs.push(song)
  end

  def song_count
    return @songs.count()
  end

  def guest_check_in(guest)
    return @guests.push(guest)
  end

  def guest_check_out(guest)
    return @guests.delete(guest)
  end


end
