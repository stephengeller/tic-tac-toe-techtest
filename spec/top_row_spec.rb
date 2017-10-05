require 'top_row'

describe TopRow do

  it 'works' do
    expect(described_class).to be
  end

  describe '#render_row' do
    describe 'at start' do
      it 'renders a board with 1 2 3' do
        expect(subject.render_row).to eq '1 | 2 | 3'
      end
    end

    describe 'after 1 move' do
      it 'changes the effected space' do
        subject.fill(1, 'X')
        expect(subject.render_row).to eq 'X | 2 | 3'
      end

      it 'can use any symbol' do
        subject.fill(1, 'X')
        subject.fill(3, 'O')
        expect(subject.render_row).to eq 'X | 2 | O'
      end
    end
  end

end
