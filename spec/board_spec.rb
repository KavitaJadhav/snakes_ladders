require 'board'

RSpec.describe Board, 'model' do
  let(:board) {Board.new}

  describe '.setup' do
    it 'should create board and set cells in it' do
      board = Board.setup

      expect(board.cells.map(&:value)).to match_array((1..100).to_a)
    end
  end
end