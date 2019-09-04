require("minitest/autorun")
require("minitest/rg")
require_relative("../Bear.rb")
require_relative("../Fish.rb")
require_relative("../River.rb")

class TestRiver < MiniTest::Test

	def setup
    @river = River.new("Amazon", @river_fish)

    @fish1 = Fish.new("Gregory")
    @fish2 = Fish.new("Gregory")
    @fish3 = Fish.new("Gregory")
    @fish4 = Fish.new("Gregory")
    @fish5 = Fish.new("Gregory")
    @fish6 = Fish.new("Gregory")
    @fish7 = Fish.new("Gregory")

    @river_fish = [@fish1, @fish2, @fish3, @fish4, @fish5, @fish6, @fish7]

	end

  def test_river_name()
		assert_equal("Amazon", @river.river_name())
	end

  def test_river_fish_count()
    assert_equal(7, @river_fish.count())
  end

  def test_lose_fish()
    @river.lose_fish()
    assert_equal(6, @river_fish.river_fish_count())
  end
end
