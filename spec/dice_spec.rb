require 'dice'

RSpec.describe Dice, 'model' do
  let(:dice) {Dice.new(10)}

  describe '.roll' do
    it 'should return dice output between a range' do
      expect(Dice.roll).to be_between(1, 6)
    end
  end
end