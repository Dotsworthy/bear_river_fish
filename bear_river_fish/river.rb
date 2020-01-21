class River

  attr_reader :river_name, :fish

  def initialize(river_name,fish)
    @river_name = river_name
    @fish = fish
  end

  def fish_in_river
    @fish.count
  end

  def remove_fish(name)
    @fish.delete(name)
  end
end
