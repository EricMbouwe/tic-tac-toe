require_relative '../lib/player'

class Game
  attr_accessor :board
  attr_reader :winning

  def initialize
    @board = [
      ['-------------'],
      ['|', '   ', '|', '   ', '|', '   ', '|'],
      ['-------------'],
      ['|', '   ', '|', '   ', '|', '   ', '|'],
      ['-------------'],
      ['|', '   ', '|', '   ', '|', '   ', '|'],
      ['-------------']
    ]
    @winning = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
  end

  def add_player
    return player = Player.new
  end

  def display_board(gameboard)
    gameboard.each do |row|
      row.each do |c|
        print c
      end
      puts
    end
  end

  def choose_symbol(choice, player1, player2)
    player1.sym = choice
    if choice == 'X'
      player2.sym = 'O'
    elsif choice == 'O'
      player2.sym = 'X'
    end
  end

  def check_move(position)
    position < 1 || position > 9
  end

  def invalid_move
    'Wrong position given, please enter a number between 1 and 9'
  end

  def position_taken(position, player1, player2)
    player1.positions.include?(position) || player2.positions.include?(position)
  end

  def invalid_position
    'Position taken, please enter a new one'
  end

  def bad_play(position, player1, player2)
    check_move(position) || position_taken(position, player1, player2)
  end

  def winner(winning, player)
    winning.each do |list|
      return "Congratulations #{player.name.capitalize}, you win!!!" if (list - player.positions).empty?
    end
    ''
  end
end
