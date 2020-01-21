class Bear

  attr_reader :bear_name

  def initialize(bear_name)
    @bear_name = bear_name
    @stomach = []
  end

  def fish_in_stomach
    @stomach.count
  end

  def add_fish(name)
    @stomach.push(name)
  end

  def take_fish_from_river(bear, river, fish)
    bear.add_fish(fish)
    river.remove_fish(fish)
  end

  def roar
    return "ROAR!"
  end
end
