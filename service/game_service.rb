class GameService
  attr_reader :game, :turns, :dice

  def initialize(game, turns, dice)
    @game = game
    @turns = turns
    @dice = dice
  end

  def start
    for i in 1.upto(turns)
      before_position = game.player.position
      dice_output = dice.roll
      game.navigate_player(dice_output)
      after_position = game.player.position

      puts "Turn #{i}, dice value: #{dice_output}, current position:#{before_position}, moved to #{ after_position}"
    end
  end
end