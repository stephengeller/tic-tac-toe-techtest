class DiagonalFormatter

  def format_array(board)
    arr = []
    arr.push([board[0][0], board[1][1], board[2][2]])
    arr.push([board[0][2], board[1][1], board[2][0]])
    arr
  end
end
