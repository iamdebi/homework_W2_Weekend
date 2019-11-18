# Rooms can keep track of the entry fees/spending of the guests - maybe add a bar tab/bar class?
# Add anything extra you think would be good to have at a karaoke venue!



class Room

attr_reader :name, :songs, :guests, :fee, :capactiy, :total_fees, :drinks

  def initialize(name, songs, guests, fee, capactiy, drinks)
    @name = name
    @songs = songs
    @guests = guests
    @fee = fee
    @capactiy = capactiy
    @total_fees = 0
    @drinks = drinks
    @bar_tab = 0

  end

  def add_song(song)
    return @songs.push(song)
  end

  def song_count
    return @songs.count()
  end

  def guest_check_in(guest)
    guest.wallet_amend(@fee)
    total_fee_tally
    @guests.push(guest)
    @total_fees += @fee
  end

  def guest_check_out(guest)
    return @guests.delete(guest)
  end

  def guest_count
    return @guests.count()
  end

  def reach_cap(guest)
    if @guests.size <= @capactiy
       return guest_check_in(guest)
    else
      @guests.clear
       return "sorry, room is too full you will need to find another room"
    end
  end

  def find_fav_song(guest)
     @songs.find{|song| song == guest.fav_song}
      return "Whoo!"
  end

  def total_fee_tally
    @total_fees = @guests.size * @fee
  end

end
