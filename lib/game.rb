class Game
  attr_reader :player1, :player2


  def initialize(player_1,player_2)
    @player1 = player_1
    @player2 = player_2
  end

  def dropkick(victim)
    victim.receive_damage
  end

  def player_1_name
    @player1.name
  end

  def player_2_name
    @player2.name
  end

  def player_1_hp
    @player1.hit_points
  end

  def player_2_hp
    @player2.hit_points
  end

end
