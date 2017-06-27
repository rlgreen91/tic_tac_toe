require 'set'

class Player
	extend Logging
	extend GameState
	attr_reader :piece, :possible_winning_combos
	attr_accessor :occupied_spaces 

	def initialize(piece)
		@logger = Logging.logger
		@possible_winning_combos = Set.new
		@occupied_spaces = Set.new
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

	def is_winner?
		if @occupied_spaces.length >= 3
			@possible_winning_combos.each { |combo| return true if combo.subset? @occupied_spaces }
		else
			return false
		end
	end

	def remove_winning_combos(position)
		GameState.winning_combos.each do |combo|
			@possible_winning_combos.delete combo if (combo.include? position) && (@possible_winning_combos.include? combo)
		end
		@logger.info("Possible winning combos for player are now: " + @possible_winning_combos.to_a.to_s)
	end

	def update_winning_combos(position)
		GameState.winning_combos.each { |combo| @possible_winning_combos << combo if combo.include? position }
		@logger.info("Possible winning combos for player are now: " + @possible_winning_combos.to_a.to_s)
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