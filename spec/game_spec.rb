require 'game'

RSpec.describe Game, 'model' do
  let(:game) {Game.new(2)}

  describe '#play' do
    it 'should return value of the cell' do
      board = game.board
      _2nd_cell = board.cells[1]
      _4th_cell = board.cells[3]

      expect(Dice).to receive(:roll).twice.and_return(2)
      expect(board).to receive(:get_cell).with(nil, 2).and_return(_2nd_cell)
      expect(board).to receive(:get_cell).with(_2nd_cell, 2).and_return(_4th_cell)

      game.play
    end
  end
end