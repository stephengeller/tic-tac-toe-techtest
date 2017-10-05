class BottomRow

  def initialize
    @row = {
      7 => 7,
      8 => 8,
      9 => 9
    }
  end

  def render_row
    "#{@row[7]} | #{@row[8]} | #{@row[9]}"
  end

  def fill(space, symbol)
    @row[space] = symbol
  end

end
