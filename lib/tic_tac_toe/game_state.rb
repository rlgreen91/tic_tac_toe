require 'board'
require 'player'
require 'computer'

module GameState
	extend Logging

	def self.new
		@@logger = Logging.logger
		@@board = Board.new
		@@open_spaces = board.open_spaces
		@@next_player = nil
		@@winning_combos = Set.new [ Set.new ['A1, A2, A3'], 
									 Set.new ['B1, B2, B3'], 
									 Set.new ['C1, C2, C3'],
									 Set.new ['A1, B1, C1'], 
									 Set.new ['A2, B2, C2'], 
									 Set.new ['A3, B3, C3'],
									 Set.new ['A1, B2, C3'], 
									 Set.new ['C1, B2, A3']]
		@@winner = nil
	end

	def self.update_game_state(user, opponent, place_selection)
		# First, note place selection and check for winning move
		@@logger.info("Adding " + place_selection + " to list of spaces occupied by " user.to_sym)
		user.occupied_spaces << place_selection
		if user.is_winner?
			@@winner = user.to_sym
			return
		# If not the winner, update the game state
		else
			@@logger.info("Updating board to place " + user.piece + " in " + place_selection)
			@@board.update(user, place_selection)
			user.update_winning_combos(place_selection)
			opponent.remove_winning_combos(place_selection)
		end
		@@next_player = opponent.to_sym
	end



	class << self
		attr_accessor :board, :open_spaces, :next_player

		attr_reader :winning_combos, :winner
	end
end