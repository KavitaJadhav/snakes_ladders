require 'board'

RSpec.describe Board, 'model' do
  let(:board) {Board.setup}

  describe '.setup' do
    it 'should create board and set cells in it' do
      expect(board.cells.map(&:value)).to match_array((1..100).to_a)
    end
  end

  describe '#get_cell' do
    context 'when first turn' do
      it 'should return cell with given position' do
        cell = board.get_cell(nil, 5)
        expect(cell.value).to eq(5)
      end
    end

    context 'when current cell present' do
      it 'should return cell after given position' do
        cell = Cell.new(5)

        cell = board.get_cell(cell, 5)
        expect(cell.value).to eq(10)
      end
    end
  end
end