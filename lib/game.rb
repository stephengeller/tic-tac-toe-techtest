require_relative './board'
require_relative './turn_counter'
require_relative './winner_checker'

class Game

  def initialize(player1, player2, board = Board.new, turn_counter = TurnCounter, winner_checker = WinnerChecker.new)
    @board = board
    @turn_counter = turn_counter.new(player1, player2)
    @winner_checker = winner_checker
  end

  def play(number)
    update_board_and_print(number)
    check_for_winner
    next_turn
  end

  def check_for_winner
    puts "#{@turn_counter.current_turn.name} wins!" if
      @winner_checker.check_winner(@board.cells)
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
