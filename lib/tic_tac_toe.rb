require "tic_tac_toe/version"

module TicTacToe
	extend Logging
	extend GameIO
  
  # Basic gameplay
  def play_game
  	logger = Logging.logger
  	logger.info("Starting new game")
  	board = GameState.new
  	player_piece = GameIO.display(:start)
  	# Recieve input and assign user piece
  	# Print game board:
  	#   if player picks x, display empty board
  	GameIO.display(:board)
  	#   if player picks o, have computer pick and display updated board
  	# Ask user what space they want
  	selection = GameIO.display(:ask)
  	# Recieve input, update game state
  	# Check for winning combo
  	# Repeat from 'print game board' with computer's move
  	GameIO.display(:finish)
  end
end
