require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")
require_relative("../room")
require_relative("../song")

class TestGuest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Drew", 20.0, "Don't Stop Believin'")
  end

  def test_has_name()
    assert_equal("Drew", @guest1.name)
  end

  end
