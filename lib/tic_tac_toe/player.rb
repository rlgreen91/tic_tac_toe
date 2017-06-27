class Player
	extend Logging
	attr_reader :piece

	def initialize(piece)
		@logger = Logging.logger
		@possible_winning_combos = Array.new
		if is_valid_piece?(piece)
			@piece = piece
			@logger.info("Assigning " + piece + "to player.")
		else
			@logger.error("Invalid choice selected for piece.")
			raise ArgumentError, 'Invalid selection for piece'
		end
	end

	def is_valid_piece?(piece)
		case piece
		when "X" || "O"
			true
		else
			false
		end
end