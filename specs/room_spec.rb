require ("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../guest")
require_relative("../song")


class RoomTest < MiniTest::Test

  def setup()
    @room1 = Room.new("Silver", 8)
    @guest1 = Guest.new("Shirley Knott")
    @guest2 = Guest.new("Noah Peel")
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
    @room1.add_chosen_song(@guest1, @song1)
    assert_equal(1, @room1.playlist.length)
  end

  def test_guest_leaves_room()
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.remove_guest(@guest1)
    assert_equal(1, @room1.guest_list.length)
  end

  def test_room_is_full()
    @room2 = Room.new("Tiny", 1)
    @room2.add_guest(@guest1)
    result = @room2.add_guest(@guest2)
    assert_equal("Sorry, this room is now full", result)
  end





end
