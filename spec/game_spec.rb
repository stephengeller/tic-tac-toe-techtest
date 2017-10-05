require 'game'

describe Game do
  let(:board) { double :board }
  let(:turn_counter) { double :turn_counter }
  subject { Game.new('player 1', 'player 2', board, turn_counter) }

  before do
    allow(board).to receive(:new).and_return(board)
    allow(turn_counter).to receive(:new).and_return(turn_counter)
  end

  it 'works' do
    expect(described_class).to be
  end

  describe '#play' do

    before do
      allow(turn_counter).to receive_message_chain(:current_turn, :symbol).and_return('X')
    end

    it 'updates the appropriate row' do
      expect(board).to receive(:update).with(5, 'X')
      allow(turn_counter).to receive(:next)
      subject.play(5)
    end

    it 'goes to next turn' do
      allow(board).to receive(:update).with(5, 'X')
      expect(turn_counter).to receive(:next)
      subject.play(5)
    end
  end


end
