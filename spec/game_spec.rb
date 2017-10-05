require 'game'

describe Game do
  let(:board) { double :board }
  let(:turn_counter) { double :turn_counter }
  let(:winner_checker) { double :winner_checker }

  subject { Game.new('player 1', 'player 2', board, turn_counter, winner_checker) }

  before do
    allow(board).to receive(:new).and_return(board)
    allow(turn_counter).to receive(:new).and_return(turn_counter)
    allow(board).to receive(:update)
  end

  it 'works' do
    expect(described_class).to be
  end

  describe '#play' do

    before do
      allow(turn_counter).to receive_message_chain(:current_turn, :symbol).and_return('X')
      allow(board).to receive(:cells)
      allow(winner_checker).to receive(:check_winner)
    end

    it 'updates the appropriate row' do
      expect(board).to receive(:update).with(5, turn_counter.current_turn)
      allow(turn_counter).to receive(:next)
      allow(board).to receive(:render_board)
      subject.play(5)
    end

    it 'goes to next turn' do
      allow(board).to receive(:update).with(5, 'X')
      allow(board).to receive(:render_board)
      expect(turn_counter).to receive(:next)
      subject.play(5)
    end

    it 'renders the board' do
      allow(board).to receive(:update).with(5, 'X')
      allow(turn_counter).to receive(:next)
      expect(board).to receive(:render_board)
      subject.play(5)
    end
  end

end
