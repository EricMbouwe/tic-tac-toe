require_relative 'player'

class Game
  attr_accessor :board

  def initialize(_player1, _player2)
    @player1 = Player.new
    @player2 = Player.new
    @board = [
      ['-------------'],
      ['|', '   ', '|', '   ', '|', '   ', '|'],
      ['-------------'],
      ['|', '   ', '|', '   ', '|', '   ', '|'],
      ['-------------'],
      ['|', '   ', '|', '   ', '|', '   ', '|'],
      ['-------------']
    ]
  end

  def choose_symbol(choice, player1, player2)
    player1.sym = choice
    if choice == 'X'
      player2.sym = 'O'
    elsif choice == 'O'
      player2.sym = 'X'
    end
  end

  def check_move(gamebord, position)
	while pos < 1 || pos > 9
		'Wrong position given, please enter a number between 1 and 9'
	end
	position
  end

  def check_taken_position(gameboard, position, player1, player2)
	while player1.positions.include?(position) || player2.positions.include?(position)
		'position already taken, please enter a new one'
	end
	position
  end

  def winner(winning)
	winning.each do |cases|
	  return "Congratulations #{player1.capitalize}, you win!!!" if (cases - player1.positions).empty?
	  return "Congratulations #{player2.capitalize}, you win!!!" if (cases - player2.positions).empty?
	  return 'draw game (:'.upcase if player1.positions.size + player2.positions.size == 9
	end
	''
  end

end
