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
    player = Player.new
    player
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
    invalid_move if position < 1 || position > 9
  end

  def invalid_move
    'Wrong position given, please enter a number between 1 and 9'
  end

  def position_taken(position, player1, player2)
    invalid_position if player1.positions.include?(position) || player2.positions.include?(position)
  end

  def invalid_position
    'Position taken, please enter a new one'
  end

  def bad_play(position, player1, player2)
    check_move(position) || position_taken(position, player1, player2)
  end

  def winner(winning, player1, player2)
    pos1 = player1.positions
    pos2 = player2.positions

    winning.each do |list|
      return "Congratulations #{player1.name.capitalize}, you win!!!" if (list - pos1).empty?
      return "Congratulations #{player2.name.capitalize}, you win!!!" if (list - pos2).empty?
      return 'Draw (:'.upcase if (!(list - pos1).empty? && !(list - pos2).empty?) && pos1.size + pos2.size == 9
    end
    ''
  end
end
