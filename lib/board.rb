class Board

  def initialize(top_row, middle_row, bottom_row)
    @top_row = top_row.render_row
    @middle_row = middle_row.render_row
    @bottom_row = bottom_row.render_row
  end

  def render_rows
    str = "#{@top_row}\n#{@middle_row}\n#{@bottom_row}"
  end

end
