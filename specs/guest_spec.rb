require ("minitest/autorun")
require("minitest/rg")
require_relative("../guest")
require_relative("../song")


class GuestTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Shirley Knott")
    @guest2 = Guest.new("Chantelle Athing")
    @song1 = Song.new("Park Life", "Blur")

  end

  def test_guest_has_name()
    assert_equal("Shirley Knott", @guest1.name)
  end

  def test_choose_song()
    result = @guest1.choose_song(@song1)
    assert_equal(@song1, result)
  end



end
