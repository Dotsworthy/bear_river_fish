require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class BearTest < MiniTest::Test
  def setup
    @bear1 = Bear.new("Alfie")
  end

  def test_get_bear_name
    assert_equal("Alfie", @bear1.bear_name)
  end

  def test_bear_stomach_empty
    assert_equal(0,@bear1.fish_in_stomach)
  end

  def test_add_fish_to_stomach
    @bear1.add_fish("Trout")
    assert_equal(1, @bear1.fish_in_stomach)
  end

  def test_bear_takes_fish_from_river
    @fish1 = Fish.new("Albacore")
    @fish2 = Fish.new("Trout")
    @fish3 = Fish.new("Mackeral")

    @river1 = River.new("Siene", [@fish1, @fish2, @fish3])

    @bear1.take_fish_from_river(@bear1, @river1, @fish1)

    assert_equal(1, @bear1.fish_in_stomach)
    assert_equal(2, @river1.fish_in_river)
  end

  def test_bear_can_roar
    assert_equal("ROAR!", @bear1.roar)
  end
end
