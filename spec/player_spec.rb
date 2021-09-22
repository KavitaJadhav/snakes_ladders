require 'player'
require 'cell'

RSpec.describe Player, 'model' do
  let(:player) {Player.new}

  describe '#position' do
    context 'when current_cell is present' do
      it 'should return value of the cell' do
        cell = Cell.new(10)
        player.move(cell)

        expect(player.position).to eq(cell.value)
      end
    end

    context 'when current_cell is not set' do
      it 'should return nil value' do
        expect(player.position).to be_nil
      end
    end
  end
end