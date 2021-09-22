require_relative '../../service/game_service'
require 'game'

RSpec.describe GameService, 'model' do
  describe '#start' do
    it 'should run game for given turns' do
      game = Game.new
      game_service = GameService.new(game, 2)

      expect(Dice).to receive(:roll).twice.and_return(2)
      expect(game).to receive(:navigate_player).with(2).twice

      game_service.start
    end
  end
end
