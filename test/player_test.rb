require "test_helper"

class PlayerTest < Minitest::Test

	def test_create_new_player
		# Invalid input for piece
		assert_raises ArgumentError do 
			Player.new("A")
		end
		
		# Valid input for piece
		player = Player.new("X")
		assert_equal "X", player.piece
		assert_equal [], player.possible_winning_combos
	end
end