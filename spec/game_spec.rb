require 'game'

RSpec.describe Game, 'model' do
  let(:game) {Game.new}

  describe '#setup_board' do
    it 'should create cells and snakes on given cells' do
      snake_positions = [[10, 7], [20, 4]]

      expect(game.board).to receive(:setup).with(snake_positions)
      game.setup_board(snake_positions)
    end
  end

  describe '#navigate_player' do
    it 'should create cells and snakes on given cells' do
      board = game.board
      player = game.player
      positions_to_move = 2
      cell = double('Cell')

      expect(board).to receive(:cell_from).with(player.current_cell, positions_to_move).and_return(cell)
      expect(player).to receive(:move).with(cell)
      expect(cell).to receive(:destination).and_return(cell)

      game.navigate_player(positions_to_move)
    end
  end
end