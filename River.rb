class River

  attr_reader :river_name, :river_fish


  def initialize(river_name, river_fish)
    @river_name = river_name
    @river_fish = river_fish
  end

  def river_fish_count()
    return @river_fish.count()
  end

  def lose_fish(fish)
    @river_fish.delete(fish)
  end

end
