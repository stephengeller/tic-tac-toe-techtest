require_relative 'diagonal_formatter'
require_relative 'column_formatter'

class WinnerChecker

  def initialize(column_formatter = ColumnFormatter.new, diagonal_formatter = DiagonalFormatter.new)
    @column_formatter = column_formatter
    @diagonal_formatter = diagonal_formatter
  end

  def check_winner(board)
    (check_rows(board) || check_columns(board) || check_diagonals(board))
  end

  private

  def check_rows(board)
    board.each do |rows|
      return true if rows.same_values?
    end
    false
  end

  def check_columns(board)
    board = @column_formatter.format_array(board)
    check_rows(board)
  end

  def check_diagonals(board)
    board = @diagonal_formatter.format_array(board)
    check_rows(board)
  end
end

class Array
  def same_values?
    uniq.length == 1
  end
end
