class Player
  attr_accessor :name, :positions, :sym

  def initialize
    @name = name
    @positions = []
    @sym = ''
  end

  def move(gameboard, position, sym)
    positions.push(position)
    return gameboard[1][1] = " #{sym} " if position == 1
    return gameboard[1][3] = " #{sym} " if position == 2
    return gameboard[1][5] = " #{sym} " if position == 3
    return gameboard[3][1] = " #{sym} " if position == 4
    return gameboard[3][3] = " #{sym} " if position == 5
    return gameboard[3][5] = " #{sym} " if position == 6
    return gameboard[5][1] = " #{sym} " if position == 7
    return gameboard[5][3] = " #{sym} " if position == 8
    return gameboard[5][5] = " #{sym} " if position == 9
    return 'Wrong position given, enter a number between 1 and 9' if position < 1 || position > 9
  end
end
