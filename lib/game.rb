class Game

  def initialize(player_1,player_2)
    @player1 = player_1
    @player2 = player_2
  end

  def dropkick(victim)
    victim.receive_damage
  end

end
