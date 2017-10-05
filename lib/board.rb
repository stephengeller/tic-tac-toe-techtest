require_relative './row_formatter'
require_relative './row_updater'

class Board

  attr_reader :cells

  def initialize(row_formatter = RowFormatter.new, row_updater = RowUpdater.new)
    @row_formatter = row_formatter
    @row_updater = row_updater
    @cells = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]
  end

  def render_board
    render_rows(@cells) + "\n"
  end

  def render_rows(board)
    @row_formatter.format_rows(board)
  end

  def update(number, current_turn)
    @cells = @row_updater.update(@cells, number, current_turn.symbol)
  end

end
