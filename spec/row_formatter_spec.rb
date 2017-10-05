require 'row_formatter'

describe RowFormatter do

  describe '#format_row' do
    it 'formats a row in tic-tac-toe format' do
      expect(subject.format_row([1,2,3])).to eq " 1 | 2 | 3 "
    end
  end

end
