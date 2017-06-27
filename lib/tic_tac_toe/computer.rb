require 'set'

class Computer
	extend Logging
	extend GameState
	attr_reader :piece, :possible_winning_combos
	attr_accessor :occupied_spaces

	def initialize(piece)
		@logger = Logging.logger
		@possible_winning_combos = Set.new
		@occupied_spaces = Set.new
		@piece = piece
		@logger.info("Assigning " + piece + "to computer.")
	end

	def is_winner?
		if @occupied_spaces.length >= 3
			@possible_winning_combos.each { |combo| return true if combo.subset? @occupied_spaces }
		else
			return false
		end
	end

	def pick_position(open_spaces)
		open_spaces.sample
	end

	def remove_winning_combos(position)
		GameState.winning_combos.each do |combo|
			@possible_winning_combos.delete combo if (combo.include? position) && (@possible_winning_combos.include? combo)
		end
		@logger.info("Possible winning combos for computer are now: " + @possible_winning_combos.to_a.to_s)
	end

	def update_winning_combos(position)
		GameState.winning_combos.each { |combo| @possible_winning_combos << combo if combo.include? position }
		@logger.info("Possible winning combos for computer are now: " + @possible_winning_combos.to_a.to_s)
	end
end