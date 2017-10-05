require 'winner_checker'

describe WinnerChecker do

  it 'works' do
    expect(described_class).to be
  end

  it 'returns a message if winning combo' do
    winning_board = [
      ['X','X','X'],
      [4,5,6],
      [7,8,9]
    ]
    expect(subject.check_winner(winning_board)).to eq 'Winner!'
  end
end
