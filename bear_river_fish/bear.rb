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
# there is no way to deal with nil values?
    bear.add_fish(fish)
    river.remove_fish(fish)
  end

  #check homework solution to see how it works

  def roar
    return "ROAR!"
  end
end
