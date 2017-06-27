require "tic_tac_toe/version"

module TicTacToe
	extend Logging
	extend GameIO
	include Player
  
  # Basic gameplay
  def play_game

  	# Initialize game
  	logger = Logging.logger
  	logger.info("Starting new game")
  	board = GameState.new
  	GameIO.display(:start)
  	begin
  		player_piece = GameIO.display(:get_piece)
  		logger.info("Creating a player with piece" + player_piece)
  		player = Player.new(player_piece)
  	rescue
  		GameIO.display(:invalid_piece)
  		retry
  	end

  	# Looping Game Logic
  	if player.piece = 'X'
  		GameIO.display(:board)
  	else
  	# Print game board:
  	#   if player picks o, have computer pick and display updated board
  	# Ask user what space they want
  	selection = GameIO.display(:ask)
  	# Recieve input, update game state
  	# Check for winning combo
  	# Repeat from 'print game board' with computer's move
  	GameIO.display(:finish)
  end
end
