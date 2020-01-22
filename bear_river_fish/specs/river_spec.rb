require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test
  def setup
    @fish1 = Fish.new("Seabass")
    @fish2 = Fish.new("Trout")
    @fish3 = Fish.new("Flounder")

    @river1 = River.new("Kwai",[@fish1, @fish2, @fish3])
  end

  def test_get_river_name
    assert_equal("Kwai",@river1.river_name)
  end

  def test_get_fish
    assert_equal([@fish1, @fish2, @fish3], @river1.fish)
  end

  def test_number_of_fish_in_river
    assert_equal(3, @river1.fish_in_river)
  end

  def test_remove_fish
    @river1.remove_fish(@fish2)
    assert_equal(2, @river1.fish_in_river)
  end
end
