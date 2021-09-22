require 'board'

RSpec.describe Board, 'model' do
  let(:board) {Board.new}
  let(:cells) {[double('Cell', value: 1),
                double('Cell', value: 2),
                double('Cell', value: 3),
                double('Cell', value: 4)]}

  describe '#get_cell' do
    context 'when first turn' do
      it 'should return cell with given position' do
        board.cells = cells

        expect(board.cell_from(nil, 2)).to eq(cells[1])
      end
    end

    context 'when current cell present' do
      it 'should return cell after given position' do
        board.cells = cells

        expect(board.cell_from(cells[0], 2)).to eq(cells[2])
      end
    end
  end

  describe '#get_cell' do
    it 'should return cell for given value' do
      board.cells = cells

      expect(board.cell(2)).to eq(cells[1])
    end
  end

  describe '#setup' do
    it 'should create cells and position snakes' do
      board.setup([[20, 7]])

      cell_20 = board.cell(20)
      expect(board.cells.map(&:value)).to match_array((1..100).to_a)
      expect(cell_20.snake.head.value).to eq(20)
      expect(cell_20.snake.tail.value).to eq(7)
    end
  end
end