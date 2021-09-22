require 'cell'

RSpec.describe Cell, 'model' do
  let(:cell) {Cell.new(10)}

  describe '#value' do
    it 'should return value of the cell' do
      expect(cell.value).to eq(10)
    end
  end

  describe '#add_snake' do
    it 'should mark cell as snake head' do
      snake = double('Snake')

      cell.add_snake(snake)

      expect(cell.snake).to eq(snake)
    end
  end

  describe '#destination' do
    context 'when snake present on cell' do
      it 'should return snake tail cell as destination' do
        tail = Cell.new(5)
        snake = double('Snake', tail: tail)

        cell.add_snake(snake)

        expect(cell.destination).to eq(tail)
      end
    end

    context 'when cell does not have snake' do
      it 'should return the same cell' do
        expect(cell.destination).to eq(cell)
      end
    end
  end
end