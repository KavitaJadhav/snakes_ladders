require 'dice'
class CrookedDice < Dice
  def self.roll
    [2, 4, 6, 8, 10, 12].sample
  end
end