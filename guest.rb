class Guest

 attr_reader :name, :wallet

 def initialize(name, wallet)
   @name = name
   @wallet = wallet
 end

 def wallet_amend(amount)
   @wallet -= amount
 end

end
