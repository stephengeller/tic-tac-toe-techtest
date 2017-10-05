require 'board'

describe Board do
  let(:top_row) { double :top_row }
  let(:middle_row) { double :middle_row }
  let(:bottom_row) { double :bottom_row }
  subject { Board.new(top_row, middle_row, bottom_row) }

  before do
    allow(top_row).to receive(:render_row).and_return(" 1 | 2 | 3 ")
    allow(middle_row).to receive(:render_row).and_return(" 4 | 5 | 6 ")
    allow(bottom_row).to receive(:render_row).and_return(" 7 | 8 | 9 ")
  end

  it 'works' do
    expect(described_class).to be
  end

  describe '#render_rows' do
    it 'displays all three rows' do
      expect(subject.render_rows).to eq(
      " 1 | 2 | 3 \n" +
      " 4 | 5 | 6 \n" +
      " 7 | 8 | 9 "
      )
    end
  end

  describe '#update' do
    it 'updates the appropriate row' do
      subject.update(5, 'X')
    end
  end
end
