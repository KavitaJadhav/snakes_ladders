require_relative './cell'

class Board
  attr_accessor :cells

  def initialize
    @cells = []
  end

  def get_cell(from_cell, positions)
    if from_cell
      current_cell_index = from_cell.value - 1
      @cells[current_cell_index + positions]
    else
      @cells[positions - 1]
    end
  end

  def self.setup
    board = Board.new
    for i in 1.upto(100)
      board.cells << Cell.new(i)
    end

    board
  end
end