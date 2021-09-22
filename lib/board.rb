require_relative './cell'
require_relative './snake'

class Board
  attr_accessor :cells

  def initialize
    @cells = []
  end

  def cell_from(from_cell, positions)
    if from_cell
      current_cell_index = from_cell.value - 1
      @cells[current_cell_index + positions]
    else
      @cells[positions - 1]
    end
  end

  def cell(value)
    cells[value - 1]
  end

  def setup(snake_positions)
    add_cells
    add_snakes(snake_positions)
  end

  private

  def add_cells
    for i in 1.upto(100)
      cells << Cell.new(i)
    end
  end

  def add_snakes(positions)
    positions.each do |position|
      Snake.add(cell(position[0]), cell(position[1]))
    end
  end
end