class MiddleRow

  def initialize
    @row = {
      4 => 4,
      5 => 5,
      6 => 6
    }
  end

  def render_row
    "#{@row[4]} | #{@row[5]} | #{@row[6]}"
  end

  def fill(space, symbol)
    @row[space] = symbol
  end


end
