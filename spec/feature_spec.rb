require 'player'
require 'game'

describe 'feature' do

  tom = Player.new('Tom', 'T')
  jerry = Player.new('Jerry', 'J')
  game = Game.new(tom, jerry)

  # 1 | 2 | 3
  #----------
  # 4 | 5 | 6
  #----------
  # 7 | 8 | 9

  # Tom's turn!

  game.play(5)

  # 1 | 2 | 3
  #----------
  # 4 | T | 6
  #----------
  # 7 | 8 | 9

  # Jerry's turn!

  game.play(3)

  # 1 | 2 | J
  #----------
  # 4 | T | 6
  #----------
  # 7 | 8 | 9

  # ...

end
