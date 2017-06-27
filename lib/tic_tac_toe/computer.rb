class Computer
	extend Logging
	attr_reader :piece, :possible_winning_combos

	def initialize(piece)
		@logger = Logging.logger
		@possible_winning_combos = Array.new
		@piece = piece
		@logger.info("Assigning " + piece + "to computer.")
	end

	def pick_position(open_spaces)
		open_spaces.sample
	end
end