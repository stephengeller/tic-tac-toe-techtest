require_relative './row_formatter'
require_relative './row_updater'


class Board

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
    str = ""
    @cells.each do |row|
      str += "#{render_row(row)}\n"
    end
    str
  end

  def render_row(row)
    @row_formatter.format_row(row)
  end

  def update(number, symbol)
    @cells = @row_updater.update(@cells, number, symbol)
  end

end
