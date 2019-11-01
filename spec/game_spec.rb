require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) {double(:player)}
  let(:player2) {double(:player)}

  context 'attack' do

    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end

  end
end
