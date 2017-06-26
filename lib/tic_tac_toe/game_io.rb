module GameIO
	extend GameState

	def self.display(state)
		case state
		when :start
			puts "Welcome to Tic Tac Toe!"
			puts "Which player do you want to be? X or O?"
			puts "Keep in mind that X goes first."
			selection = gets.chomp
		when :board
			board = GameState.board
			board.each { |line| puts line }
		when :ask 
			puts "Where do you want to move?"
			selection = gets.chomp
		when :finish
			winner = GameState.winner
			if winner.nil?
				puts "No winner possible - game over."
			else
				puts winner + ' has won!'
			end
		end
	end
end