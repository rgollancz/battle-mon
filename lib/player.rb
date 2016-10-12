class Player

  attr_reader :name, :hit_points

  DROPKICK = 10
  CUTTING_REMARK = 37

  def initialize(name)
    @name = name
    @hit_points = 100
  end

  def receive_damage
    @hit_points -= DROPKICK
  end

end
