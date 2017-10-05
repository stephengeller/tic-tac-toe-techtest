class TopRow

  def initialize
    @row = {
      1 => 1,
      2 => 2,
      3 => 3
    }
  end

  def render_row
    "#{@row[1]} | #{@row[2]} | #{@row[3]}"
  end

  def fill(space, symbol)
    @row[space] = symbol
  end

end
