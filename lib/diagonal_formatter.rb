class DiagonalFormatter

  def format_array(board)
    row_1 = board[0]
    row_2 = board[1]
    row_3 = board[2]
    combine_arrays(row_1, row_2, row_3)
  end

  def combine_arrays(row_1, row_2, row_3)
    arr = []
    arr.push([row_1[0], row_2[1], row_3[2]])
    arr.push([row_1[2], row_2[1], row_3[0]])
  end
end
