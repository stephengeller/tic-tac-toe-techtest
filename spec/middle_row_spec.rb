require 'middle_row'

describe MiddleRow do

  it 'works' do
    expect(described_class).to be
  end

  describe '#render_row' do
    describe 'at start' do
      it 'renders a board with 4 5 6' do
        expect(subject.render_row).to eq '4 | 5 | 6'
      end
    end

    describe 'after 1 move' do
      it 'changes the effected space' do
        subject.fill(4, 'X')
        expect(subject.render_row).to eq 'X | 5 | 6'
      end

      it 'can use any symbol' do
        subject.fill(4, 'X')
        subject.fill(6, 'O')
        expect(subject.render_row).to eq 'X | 5 | O'
      end
    end
  end

end
