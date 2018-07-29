class Room

  attr_reader :name, :capacity, :guest_list, :playlist

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @guest_list = []
    @playlist = []
  end

  def add_guest(guest)
    # if @guest_list.length < @capacity
    #   @guest_list.push(guest)
    # else
    #   return "Sorry, this room is now full"
    # end
    @guest_list.length < capacity ? @guest_list.push(guest) : "Sorry, this room is now full"
  end

  def add_chosen_song(guest, song)
    @playlist.push(guest.choose_song(song))
  end

  def remove_guest(guest)
    @guest_list.delete(guest)
  end


end
