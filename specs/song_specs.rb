require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")
require_relative("../room")
require_relative("../song")

class TestSong < MiniTest::Test

  def setup()

    @song1 = Song.new("Don't Stop Believin'")

  end

  def test_check_name
    assert_equal("Don't Stop Believin'", @song1.check_name)
  end

  def test_add_song
    song = Song.new("Don't Stop Believin'")
    assert_equal("Don't Stop Believin'", @song1.check_name)
  end


end
