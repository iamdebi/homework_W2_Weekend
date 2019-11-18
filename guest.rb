class Guest

 attr_reader :name, :wallet, :fav_song, :stomach

 def initialize(name, wallet, fav_song)
   @name = name
   @wallet = wallet
   @fav_song = fav_song
   @stomach = []
 end

 def wallet_amend(amount)
   @wallet -= amount
 end

 def buy_drink(drink)
   @stomach.push(drink)
   @wallet -= drink.price
 end

 def drink_count
   @stomach.size()
 end

end
