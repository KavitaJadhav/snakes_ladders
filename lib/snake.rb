class Snake
  attr_reader :head, :tail

  def initialize(start_cell, end_cell)
    @head = start_cell
    @tail = end_cell
  end

  def self.add(head, tail)
    snake = Snake.new(head, tail)
    head.add_snake(snake)
  end
end