class Player
  attr_accessor :name, :positions, :sym

  def initialize
    @name = name
    @positions = []
    @sym = ''
  end

  def move()
    positions.push(position)
    new_array = [[1, 1], [1, 3], [1, 5], [3, 1], [3, 3], [3, 5], [5, 1], [5, 3], [5, 5]]
    element = new_array[position - 1]
    return gameboard[element[0]][element[1]] = " #{sym} " if (1..9).include?(position)
    return 'Wrong position given, enter a number between 1 and 9' if position < 1 || position > 9
  end
end
