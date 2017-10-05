require 'bottom_row'

describe BottomRow do

  it 'works' do
    expect(described_class).to be
  end

  describe '#render_row' do
    describe 'at start' do
      it 'renders a board with 7 8 9' do
        expect(subject.render_row).to eq '7 | 8 | 9'
      end
    end

    describe 'after 1 move' do
      it 'changes the effected space' do
        subject.fill(7, 'X')
        expect(subject.render_row).to eq 'X | 8 | 9'
      end

      it 'can use any symbol' do
        subject.fill(7, 'X')
        subject.fill(9, 'O')
        expect(subject.render_row).to eq 'X | 8 | O'
      end
    end
  end

end
