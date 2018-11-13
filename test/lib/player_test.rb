require "test_helper"

class PlayerTest < Minitest::Test
	def test_create_new_player
		player = TicTacToe::Player.new("X")
		assert_equal "X", player.piece
	end
end