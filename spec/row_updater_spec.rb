require 'row_updater'

describe RowUpdater do

  describe '#update' do
    it 'swaps elements in an array of arrays' do
      array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
      edited_array = [[1, 2, 'S'], [4, 5, 6], [7, 8, 9]]
      expect(subject.update(array, 3, 'S')).to eq edited_array
    end
  end
end
