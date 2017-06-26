class Board
	attr_accessor :board
	
	def initialize
		@board = Array.new
		@board[0] = '      A   B   C  '
		@board[1] = ''
		@board[2] = '    +---+---+---+'
		@board[3] = '1   |   |   |   |'
		@board[4] = '    +---+---+---+'
		@board[5] = '2   |   |   |   |'
		@board[6] = '    +---+---+---+'
		@board[7] = '3   |   |   |   |'
		@board[8] = '    +---+---+---+'
	end
end