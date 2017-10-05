class ColumnFormatter

  def initialize
    @arr = []
    @i = 0
  end

  def format_array(board)
    while @i < 3
      @arr.push([board[0][@i], board[1][@i], board[2][@i]])
      @i += 1
    end
    @arr
  end
end
