class Room

  attr_reader :name, :capacity, :guest_list, :playlist

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @guest_list = []
    @playlist = []
  end

  def add_guest(guest)
    @guest_list.push(guest)
  end

  def add_chosen_song(guest)
    @playlist.push(guest(choose_song(song)))
  end

end
