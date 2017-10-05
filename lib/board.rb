require_relative './top_row'
require_relative './middle_row'
require_relative './bottom_row'


class Board

  attr_reader :top_row, :middle_row, :bottom_row

  def initialize(row_formatter = RowFormatter.new)
    @row_formatter = row_formatter
    @cells = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]
  end

  def render_board(rows)
    str = "#{render_row(@cells[0])}\n" +
    "#{render_row(@cells[1])}\n" +
    "#{render_row(@cells[2])}"
    str
  end

  def render_row
    @row_formatter.format_cell(@cells[0])
  end

  def update(number, symbol)

  end

end
