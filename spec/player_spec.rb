require 'player'

describe Player do

subject(:player1) {described_class.new("player1")}
subject(:player2) {described_class.new("player2")}

  it "returns name" do
    expect(player1.name).to eq("player1")
  end

end
