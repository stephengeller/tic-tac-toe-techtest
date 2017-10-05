require 'turn_counter'

describe TurnCounter do

  subject { TurnCounter.new('player 1', 'player 2') }

  it 'works' do
    expect(described_class).to be
  end

  describe 'at start' do
    it 'player 1 starts' do
      expect(subject.current_turn).to eq 'player 1'
    end
  end

  describe '#next' do
    it 'alternates between players' do
      subject.next
      expect(subject.current_turn).to eq 'player 2'
      subject.next
      expect(subject.current_turn).to eq 'player 1'
    end
  end

  describe '#reset' do
    it 'resets turns to 0' do
    end
  end

end
