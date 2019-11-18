class Bar

  attr_reader :takens, :room1, :room2

  def initialize(room1, room2)
    @room1 = room1
    @room2 = room2
    @takens = 0
  end

  def calculate_takens
    room1_takens = @room1.total_fees + @room1.bar_tab
    room2_takens = @room2.total_fees + @room2.bar_tab
    total_takens = room1_takens + room2_takens
    return total_takens

  end


end
