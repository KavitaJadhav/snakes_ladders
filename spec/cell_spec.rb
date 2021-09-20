require 'cell'

RSpec.describe Cell, 'model' do
  let(:cell) {Cell.new(10)}

  describe '#value' do
    it 'should return value of the cell' do
      expect(cell.value).to eq(10)
    end
  end
end