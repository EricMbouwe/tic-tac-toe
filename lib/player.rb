class Player
	attr_accessor :name, :positions

	def initialize
		@name = name
		@positions = []
	end

	def move(gameboard, position, sym)
		positions.push(position)

		if position == 1
	    gameboard[1][1] = sym
	  elsif position == 2
	    gameboard[1][3] = sym
	  elsif position == 3
	    gameboard[1][5] = sym
	  elsif position == 4
	    gameboard[3][1] = sym
	  elsif position == 5
	    gameboard[3][3] = sym
	  elsif position == 6
	    gameboard[3][5] = sym
	  elsif position == 7
	    gameboard[5][1] = sym
	  elsif position == 8
	    gameboard[5][3] = sym
	  elsif position == 9
	    gameboard[5][5] = sym
	  else
	    puts 'Wrong positionition given, enter a number between 1 and 9'
	  end
	end
end
