require './lib/board'
require './lib/player'
require './lib/dice'

class Game
  TURNS = 10

  def initialize
    @board = Board.setup
    @player = Player.new
  end

  def start
    for i in 1.upto(TURNS)
      dice_output = Dice.roll
      next_cell = @board.get_cell(@player.current_cell, dice_output)
      @player.current_cell = next_cell

      puts "Turn #{i}, dice value: #{dice_output}, moved to #{ @player.current_cell.value}"
    end
  end
end

Game.new.start