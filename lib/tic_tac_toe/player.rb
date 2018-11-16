require 'set'

# This is the player class, which is responsible for knowing which piece the player is using and which spaces the player has occupied
class TicTacToe::Player
	# extend Logging
	# extend GameState
	attr_reader :piece, :possible_winning_combos
	attr_accessor :occupied_spaces

	def initialize(piece)
		# @logger = Logging.logger
		@piece = piece
		@possible_winning_combos = Set.new
		@occupied_spaces = Set.new
	end

	def can_win?
		@occupied_spaces.length >= 3
	end

	def validate_position_choice(position)
		if GameState.open_spaces.include?(position)
			return true
		else
			@logger.error("Invalid choice selected for position.")
			raise ArgumentError, "Invalid selection for position"
		end
	end
end