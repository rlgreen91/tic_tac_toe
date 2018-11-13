require "tic_tac_toe/version"
require "tic_tac_toe/player"
require "tic_tac_toe/manager"
# require "computer"

module TicTacToe
	# extend Logging
	# extend GameIO

 #  # Basic gameplay
 #  def play_game

 #  	# Initialize game
 #  	logger = Logging.logger
 #  	logger.info("Starting new game")
 #  	GameState.new
 #  	GameIO.display(:start)
 #  	begin
 #  		player_piece = GameIO.display(:get_piece)
 #  		logger.info("Creating a player with piece" + player_piece)
 #  		@@player = Player.new(player_piece)
 #  	rescue
 #  		GameIO.display(:invalid_piece)
 #  		retry
 #  	end
 #  	if @@player.piece == 'X'
 #  		@@computer = Computer.new('O')
 #  		GameState.next_player = :Player
 #  	else
 #  		@@computer = Computer.new('X')
 #  		GameState.next_player = :Computer
 #    end

 #  	# Looping Game Logic
 #  	while GameState.winner.nil?
 #  		case GameState.next_player
 #  		when :Player
 #  			GameIO.display(:board)
 #  			begin
 #  				place_selection = GameIO.display(:ask)
 #  				@@player.validate_position_choice(place_selection)
 #  			rescue
 #  				GameIO.display(:invalid_place)
 #  				retry
 #  			end
 #  			logger.info("Player has selected position " + place_selection)
 #  			GameState.update_game_state(@@player, @@computer, place_selection)
 #  		when :Computer
 #  			place_selection = computer.pick_position(GameState.open_spaces)
 #  			logger.info("Computer has selected position " + place_selection)
 #  			GameState.update_game_state(@@computer, @@player, place_selection)
 #  		end
 #  		if GameState.open_spaces.empty?
 #  			GameState.winner = :none
 #  		end
 #  	end

 #  	logger.info(GameState.next_player.to_s + " wins")
 #  	GameIO.display(:finish)
 #  end
end
