require 'regular_dice'

RSpec.describe RegularDice, 'model' do
  describe '.roll' do
    it 'should return dice output between a range' do
      expect(RegularDice.roll).to be_between(1, 6)
    end
  end
end