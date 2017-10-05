require_relative './board'
require_relative './turn_counter'


class Game

  def initialize(player1, player2, board = Board, turn_counter = TurnCounter)
    @board = board.new
    @turn_counter = turn_counter.new(player1, player2)
  end

  def play(number)
    current_turn = @turn_counter.current_turn
    @board.update(number, current_turn.symbol)
    @turn_counter.next
    @board.render_board
  end

end
