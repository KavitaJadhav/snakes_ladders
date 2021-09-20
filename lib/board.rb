require_relative './cell'

class Board
  attr_accessor :cells

  def initialize
    @cells = []
  end

  def self.setup
    board = Board.new
    for i in 1.upto(100)
      board.cells << Cell.new(i)
    end

    board
  end
end