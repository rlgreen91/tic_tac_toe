module TicTacToe
	class Board
		attr_accessor :board, :open_spaces

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

			@board_mapping = { '1'=> 3, '2'=> 5, '3'=> 7,
						  					 'A'=> 6, 'B'=> 10, 'C'=> 14 }

			@open_spaces = ['A1', 'B1', 'C1', 'A2', 'B2', 'C2', 'A3', 'B3', 'C3']
		end

		def update(piece:, space:)
			row = @board_mapping[space[1]]
			column = @board_mapping[space[0]]
			@board[row][column] = piece
			@open_spaces.delete(space)
		end
	end
end