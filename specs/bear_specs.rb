require("minitest/autorun")
require("minitest/rg")
require_relative("../Bear.rb")
require_relative("../Fish.rb")
require_relative("../River.rb")

class TestBear < MiniTest::Test

	def setup
    @bear = Bear.new("Yogi", "Grizzly")
    @river = River.new("Amazon", @river_fish)
	end

  def test_bear_name()
    assert_equal("Yogi", @bear.bear_name())
  end

  def test_bear_type()
    assert_equal("Grizzly", @bear.bear_type())
  end

  def test_bear_fish_count
    assert_equal(0, @bear.bear_fish_count())
  end

  def test_catch_fish
    @bear.catch_fish("Gregory", @river)
    assert_equal(1, @bear.bear_fish_count())
    assert_equal(6, @river.river_fish_count())
  end

end
