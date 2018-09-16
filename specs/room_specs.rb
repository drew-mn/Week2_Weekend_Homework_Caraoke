require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")
require_relative("../room")
require_relative("../song")

class TestRoom < MiniTest::Test

  def setup()
    @room1 = Room.new("Room 1", 5.0, 3, [], [])
    @room2 = Room.new("Room 2", 5.0, 3, [], [])

    @song1 = Song.new("Don't Stop Believin'")
    @song2 = Song.new("Bohemian Rhapsody")
    @song3 = Song.new("Wonderwall")
    @songs = [@song1, @song2, @song3]

    @guest1 = Guest.new("Drew", 20.0, "Don't Stop Believin'")
    @guest2 = Guest.new("Joe", 30.0, "Bohemian Rhapsody")
    @guest3 = Guest.new("Jane", 40.0, "Wonderwall")
    @guests = [@guest1, @guest2, @guest3]
  end

  def test_check_name
    assert_equal("Room 1", @room1.check_name)
  end

  def test_check_capacity
    assert_equal(3, @room1.capacity)
  end

  def test_check_entry_fee
    assert_equal(5.0, @room1.entry_fee)
  end

  def test_guests_number
    assert_equal([], @room1.guests)
  end

  def test_playlist_size
    assert_equal(0, @room2.playlist_size)
  end

  def test_add_guest
    @room1.add_guest(@guest1)
    assert_equal(1, @room1.guests_number)
  end

  def test_remove_guest
    @room2.remove_guest(@guest3)
    assert_equal(0, @room2.guests_number)
  end

  def test_add_song
    @room2.add_song(@song1)
    assert_equal(1, @room2.playlist_size)
  end

  def test_remove_song
    @room2.remove_song(@song1)
    assert_equal(0, @room2.playlist_size)
  end

  def test_has_entry_fee
    assert_equal(true, @room1.has_entry_fee(@guest1))
  end

#   def test_fave_song
#     assert_equal("Whoo!", @guest1.fave_song)
# end

end
