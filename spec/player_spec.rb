require 'player'

describe Player do
  subject(:faduma) {Player.new('Faduma')}

  describe '#name' do
   it 'shows players name' do
     expect(faduma.name).to eq("Faduma")
   end
 end
end
