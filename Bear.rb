class Bear

  attr_reader :bear_name, :bear_type


  def initialize(bear_name, bear_type)
    @bear_name = bear_name
    @bear_type = bear_type
    @bear_stomach = []
  end

  def bear_fish_count()
    return @bear_stomach.count()
  end

  def catch_fish(fish, river)
    @bear_stomach.push(fish)
    river.lose_fish(fish)
  end
end
