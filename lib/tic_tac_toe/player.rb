require 'set'

module TicTacToe
	class TicTacToe::Player
		attr_reader :piece
		attr_accessor :occupied_spaces

		def initialize(piece:)
			@piece = piece
			@occupied_spaces = Set.new
		end

		def can_win?
			@occupied_spaces.length >= 3
		end
	end
end