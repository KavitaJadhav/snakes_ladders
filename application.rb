require './lib/game'
require './lib/regular_dice'
require './lib/crooked_dice'
require './service/game_service'

class Application
  def self.start(turns, dice_type, snake_positions)
    game = Game.new
    game.setup_board(snake_positions)
    dice = dice_type == 'Crooked' ? CrookedDice : RegularDice

    game_service = GameService.new(game, turns, dice)
    game_service.start
  end
end

Application.start(10, 'Regular', [[10, 7], [20, 4]])
Application.start(10, 'Crooked', [[10, 7], [20, 4]])