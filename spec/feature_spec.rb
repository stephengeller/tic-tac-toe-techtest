describe 'feature' do

  tom = Player.new('Tom')
  jerry = Player.new('Jerry')
  game = Game.new
  # 1 | 2 | 3
  #----------
  # 4 | 5 | 6
  #----------
  # 7 | 8 | 9

  # Player 1 goes first!
  game.play(5)


end
