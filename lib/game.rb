require_relative './cell'
require_relative './player'
require_relative './board'
require_relative './dice'

class Game
  attr_reader :board, :player, :turns

  def initialize(turns)
    @board = Board.setup
    @player = Player.new
    @turns = turns
  end

  def play
    for i in 1.upto(turns)
      dice_output = Dice.roll
      next_cell = board.get_cell(player.current_cell, dice_output)
      player.current_cell = next_cell
    end
  end
end