require 'board'

describe Board do
  let(:row_formatter) { double :row_foramtter}
  let(:row_updater) { double :row_updater}

  subject { Board.new(row_formatter, row_updater) }

  before do
  end

  it 'works' do
    expect(described_class).to be
  end

  describe '#render_rows' do
    it 'displays all three rows' do
      allow(row_formatter).to receive(:format_row).and_return(' line')
      expect(subject.render_board).to eq(
      " line\n" +
      " line\n" +
      " line\n"
      )
    end
  end

  describe '#update' do
    it 'updates the appropriate row' do
      expect(row_updater).to receive(:update)
      subject.update(5, 'X')
    end
  end
end
