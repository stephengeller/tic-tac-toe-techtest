class WinnerChecker

  def check_winner(board)
    return_winner if (check_rows(board) ||
                      check_columns(board) ||
                      check_diagonals(board))
  end

  private

  def return_winner
    return "Winner winner chicken dinner!"
  end

  def check_rows(board)
    board.each do |rows|
      return true if rows.same_values?
    end
    false
  end

  def check_columns(board)
    i = 0
    while i < 3
      return true if [board[0][i], board[1][i], board[2][i]].same_values?
      i += 1
    end
    false
  end

  def check_diagonals(board)
    return true if [board[0][0], board[1][1], board[2][2]].same_values?
    false
  end
end

class Array
  def same_values?
    uniq.length == 1
  end
end
