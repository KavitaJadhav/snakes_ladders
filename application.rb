require './lib/game'

class Application
  TURNS = 10

  def self.start
    Game.new(TURNS).play
  end
end

Application.start