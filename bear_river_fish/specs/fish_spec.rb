require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish.rb')

class FishTest < Minitest::Test

  def setup
    @fish1 = Fish.new("Trout")
  end

  def test_get_fish_name
    assert_equal("Trout", @fish1.name)
  end
end
