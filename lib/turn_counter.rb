class TurnCounter

  attr_reader :current_turn

  def initialize(player_1, player_2)
    @current_turn = player_1
    @players = [player_1, player_2]
  end

  def next
    @current_turn = @players.last
    @players.reverse!
    @current_turn
  end

end
