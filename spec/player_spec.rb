require 'player'

describe Player do
  subject(:faduma) {Player.new('Faduma')}
  subject(:ellie) {Player.new('Ellie')}

  context 'player details' do
    it 'shows players name' do
      expect(faduma.name).to eq("Faduma")
    end

    it 'returns the hit points' do
      expect(faduma.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  context 'attack' do
    it 'damages the player' do
      expect(ellie).to receive(:receive_damage)
      faduma.attack(ellie)
    end

    it 'reduces the player hit points' do
      expect { faduma.receive_damage}.to change { faduma.hit_points}.by(-10)
    end

  end
end
