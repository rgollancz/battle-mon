require 'game'

describe Game do
  let(:player_1) { Player.new("player_1") }
  let(:player_2) { Player.new("player_2") }
  subject(:game) { described_class.new(player_1,player_2) }

  it 'reduces playa\'s HP by 10 when dropkicked' do
     expect { game.dropkick(player_2) }.to change { player_2.hit_points }.by(-10)
  end

end
