require ("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../guest")
require_relative("../song")


class RoomTest < MiniTest::Test

  def setup()
    @room1 = Room.new("Silver", 8)
    @guest1 = Guest.new("Shirley Knott")
    @song1 = Song.new("Park Life", "Blur")
  end

  def test_room_has_name()
    assert_equal("Silver", @room1.name)
  end

  def test_room_has_capacity()
    assert_equal(8, @room1.capacity)
  end

  def test_room_has_guest_list()
    assert_equal(0, @room1.guest_list.size)
  end

  def test_guest_can_enter_room()
    @room1.add_guest(@guest1)
    assert_equal(1, @room1.guest_list.length)
  end

  def test_guest_adds_song_to_playlist()
    chosen_song = @guest1.choose_song(@song1)
    @room1.add_song(chosen_song)
    assert_equal(1, @room1.playlist.length)
  end



end
