require_relative './board'
require_relative './turn_counter'

class Game

  def initialize(player1, player2, board = Board, turn_counter = TurnCounter)
    @board = board.new
    @turn_counter = turn_counter.new(player1, player2)
  end

  def play(number)
    update_board_and_print(number)
    next_turn
  end

  private

  def next_turn
    @turn_counter.next
  end

  def update_board_and_print(number)
    @board.update(number, @turn_counter.current_turn)
    puts @board.render_board
  end

end
