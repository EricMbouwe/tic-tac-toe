class Player
  attr_accessor :name, :positions, :sym

  def initialize
    @name = name
    @positions = []
    @sym = ''
  end

  def move(gameboard, position, sym)
    positions.push(position)
    new_array = [[1, 1], [1, 3], [1, 5], [3, 1], [3, 3], [3, 5], [5, 1], [5, 3], [5, 5]]
    element = new_array[position - 1]
    gameboard[element[0]][element[1]] = " #{sym} "
  end
end
