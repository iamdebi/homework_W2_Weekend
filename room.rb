class Room

attr_reader :name, :songs, :guests, :fee, :capactiy

  def initialize(name, songs, guests, fee, capactiy)
    @name = name
    @songs = songs
    @guests = guests
    @fee = fee
    @capactiy = capactiy

  end

  def add_song(song)
    return @songs.push(song)
  end

  def song_count
    return @songs.count()
  end

  def guest_check_in(guest)
    guest.wallet_amend(@fee)
    @guests.push(guest)
  end

  def guest_check_out(guest)
    return @guests.delete(guest)
  end

  def guest_count
    return @guests.count()
  end


end
