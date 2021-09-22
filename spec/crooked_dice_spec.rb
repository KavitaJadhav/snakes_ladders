require 'crooked_dice'

RSpec.describe CrookedDice, 'model' do
  describe '.roll' do
    it 'should return dice output between a range' do
      expect([2, 4, 6, 8, 10, 12]).to include(CrookedDice.roll)
    end
  end
end