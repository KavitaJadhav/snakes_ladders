require_relative './cell'
require_relative './player'
require_relative './board'
require_relative './dice'
require_relative './snake'

class Game
  attr_reader :board, :player

  def initialize
    @board = Board.new
    @player = Player.new
  end

  def setup_board(snake_positions)
    board.setup(snake_positions)
  end

  def navigate_player(positions)
    next_cell = board.cell_from(player.current_cell, positions)
    player.move(next_cell.destination)
  end
end