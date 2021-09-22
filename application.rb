require './lib/game'
require './service/game_service'

class Application
  def self.start(turns, snake_positions)
    game = Game.new
    game.setup_board(snake_positions)

    game_service = GameService.new(game, turns)
    game_service.start
  end
end

Application.start(10, [[10, 7], [20, 4]])