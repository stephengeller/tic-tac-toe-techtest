require 'player'
require 'game'

describe 'feature' do
  let(:win_condition) { " J | J | 3 \n" +
                        "-----------\n" +
                        " T | T | T \n" +
                        "-----------\n" +
                        " 7 | 8 | 9 \n\n" 
  }

  before do
    tom = Player.new('Tom', 'T')
    jerry = Player.new('Jerry', 'J')
    @game = Game.new(tom, jerry)
  end

  # 1 | 2 | 3
  #----------
  # 4 | 5 | 6
  #----------
  # 7 | 8 | 9

  # Tom's turn!
  it 'shows a winner' do
    @game.play(4)
    @game.play(1)
    @game.play(5)
    @game.play(2)
    @game.play(6)
    # expect{ @game.play(6) } .to output(win_condition + "Tom wins!\n").to_stdout
  end

end
