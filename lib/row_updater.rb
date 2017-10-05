class RowUpdater

  def update(cells, number, symbol)
    cells.each do |row|
      row.map! do |x|
        swap_cells(x, number, symbol)
      end
    end
  end

  def swap_cells(x, number, symbol)
    if x == number
      symbol
    else
      x
    end
  end
end
