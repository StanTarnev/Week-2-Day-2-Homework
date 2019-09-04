require("minitest/autorun")
require("minitest/rg")
require_relative("../Bear.rb")
require_relative("../Fish.rb")
require_relative("../River.rb")

class TestFish < MiniTest::Test

	def setup
    @fish1 = Fish.new("Gregory")
	end

  def test_fish_name()
		assert_equal("Gregory", @fish1.fish_name)
	end

end
