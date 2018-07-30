class Guest

  attr_reader :name, :cash

  def initialize(name, cash)
    @name = name
    @cash = cash

  end

  def choose_song(song)
    return song
  end

  def pay_fee(amount)
    @cash -= amount
  end





end
