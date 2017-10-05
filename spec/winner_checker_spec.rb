require 'winner_checker'

describe WinnerChecker do
  let(:winning_row) { [
    ['X', 'X', 'X'],
    [4, 5, 6],
    [7, 8, 9]
  ]
  }
  let(:winning_column) { [
    [1, 'X', 3],
    [4, 'X', 6],
    [7, 'X', 9]
  ]
  }
  let(:winning_diagonal) { [
    ['X', 2, 3],
    [4, 'X', 6],
    [7, 8, 'X']
  ]
  }

  it 'works' do
    expect(described_class).to be
  end

  describe '#check_winner' do
    it 'returns a message if winning row' do
      expect(subject.check_winner(winning_row)).to eq 'Winner winner chicken dinner!'
    end
    it 'returns a message if winning column' do
      expect(subject.check_winner(winning_column)).to eq 'Winner winner chicken dinner!'
    end
    it 'returns a message if winning diagonal' do
      expect(subject.check_winner(winning_diagonal)).to eq 'Winner winner chicken dinner!'
    end
  end

end
