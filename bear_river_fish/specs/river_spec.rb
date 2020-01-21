require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')

class RiverTest < MiniTest::Test
  def setup
    @river1 = River.new("Kwai",["Seabass","Trout","Flounder"])
  end

  def test_get_river_name
    assert_equal("Kwai",@river1.river_name)
  end

  def test_get_fish
    assert_equal(["Seabass","Trout","Flounder"], @river1.fish)
  end

  def test_number_of_fish_in_river
    assert_equal(3, @river1.fish_in_river)
  end

  def test_remove_fish
    @river1.remove_fish("Trout")
    assert_equal(2, @river1.fish_in_river)
  end
end
