require_relative 'player'

class Game
	attr_accessor :board

	def initialize(player1, player2)
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


end