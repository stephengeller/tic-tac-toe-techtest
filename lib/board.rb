require_relative './top_row'
require_relative './middle_row'
require_relative './bottom_row'


class Board

  attr_reader :top_row, :middle_row, :bottom_row

  def initialize(top_row = TopRow.new, middle_row = MiddleRow.new, bottom_row = BottomRow.new)
    @top_row = top_row
    @middle_row = middle_row
    @bottom_row = bottom_row
  end

  def render_rows(rows)
    str = "#{@top_row.render_row}\n" +
    "#{@middle_row.render_row}\n" +
    "#{@bottom_row.render_row}"
    str
  end

  def update(number, symbol)
    if [1,2,3].include? number
      @top_row.fill(number, symbol)
    elsif [4,5,6].include? number
      @middle_row.fill(number, symbol)
    elsif [7,8,9].include? number
      @bottom_row.fill(number, symbol)
    end
  end

end
