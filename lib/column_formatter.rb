class ColumnFormatter

  def initialize
    @arr = []
    @i = 0
  end

  def format_array(board)
    row_1 = board[0]
    row_2 = board[1]
    row_3 = board[2]
    combine_arrays(row_1, row_2, row_3)
  end

  private

  def combine_arrays(row_1, row_2, row_3)
    while @i < 3
      @arr.push([row_1[@i], row_2[@i], row_3[@i]])
      @i += 1
    end
    @arr
  end
end
