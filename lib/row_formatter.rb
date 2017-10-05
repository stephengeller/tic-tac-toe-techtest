class RowFormatter

  def format_rows(board)
    str = ""
    board.each do |row|
      str += "#{string_format(row)}\n"
      str += "-----------\n" unless row == board.last
    end
    str
  end

  def string_format(row)
    " #{row[0]} | #{row[1]} | #{row[2]} "
  end

end
