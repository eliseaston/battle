require 'game'

describe Game do

  context 'attack' do
    subject(:game) { described_class.new }
    let(:faduma) {double(:player)}
    let(:ellie) {double(:player)}

    it 'damages the player' do
      expect(ellie).to receive(:receive_damage)
      game.attack(ellie)
    end

  end
end
