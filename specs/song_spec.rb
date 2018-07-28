require ("minitest/autorun")
require("minitest/rg")
require_relative("../song")


class SongTest < MiniTest::Test

  def setup()
    @song1 = Song.new("Park Life", "Blur")
  end

  def test_song_has_title()
    assert_equal("Park Life", @song1.title)
  end

  def test_song_has_artist()
    assert_equal("Blur", @song1.artist)
  end


end
