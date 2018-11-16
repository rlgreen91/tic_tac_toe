require 'set'

module TicTacToe
	class Computer < Player
		def pick_position(open_spaces:)
			open_spaces.sample
		end
	end
end