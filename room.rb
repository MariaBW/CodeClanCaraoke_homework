class Room

  attr_reader :name, :capacity, :guest_list, :playlist, :entry_fee, :till

  def initialize(name, capacity, entry_fee)
    @name = name
    @capacity = capacity
    @entry_fee = entry_fee
    @guest_list = []
    @playlist = []
    @till = 0

  end

  def add_guest(guest)
    if @guest_list.length < @capacity && guest.cash >= @entry_fee
      @guest_list.push(guest)
      guest.pay_fee(@entry_fee)
      @till += @entry_fee

    elsif @guest_list.length >= @capacity
      return "Sorry, this room is now full"

    elsif guest.cash < @entry_fee
      return "Sorry, you must pay the entry fee"
    end
    # @guest_list.length < capacity ? @guest_list.push(guest) : "Sorry, this room is now full"
  end

  def add_chosen_song(guest, song)
    @playlist.push(guest.choose_song(song))
  end

  def remove_guest(guest)
    @guest_list.delete(guest)
  end


end
