require 'player'

describe Player do

  subject { Player.new('Stephen', 'S') }

  it 'works' do
    expect(described_class).to be
  end

  describe '#name' do
    it 'keeps the name of the player' do
      expect(subject.name).to eq 'Stephen'
    end
  end

  describe '#symbol' do
    it 'keeps the symbol of the player' do
      expect(subject.symbol).to eq 'S'
    end
  end
end
