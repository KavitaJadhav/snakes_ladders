require 'snake'

RSpec.describe Snake, 'model' do
  describe '.add' do
    it 'should create snake object and set head/tail cells' do
      head = double('Cell')
      tail = double('Cell')
      snake = Snake.new(head, tail)

      expect(Snake).to receive(:new).with(head, tail).and_return(snake)
      expect(head).to receive(:add_snake).with(snake)

      Snake.add(head, tail)
    end
  end
end