class Cell
  attr_reader :value, :snake

  def initialize(value)
    @value = value
  end

  def add_snake(snake)
    @snake = snake
  end

  def destination
    snake ? snake.tail : self
  end
end