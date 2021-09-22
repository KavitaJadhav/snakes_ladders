class Player
  attr_reader :current_cell

  def move(cell)
    @current_cell = cell
  end

  def position
    current_cell.value if current_cell
  end
end