require "test_helper"

class PlayerTest < Minitest::Test
	def test_create_new_player
		player = TicTacToe::Player.new("X")
		assert_equal "X", player.piece
	end

  def test_can_win
    player = TicTacToe::Player.new("X")
    assert_equal false, player.can_win?
    player.occupied_spaces = Set.new(['A1', 'B1', 'C1'])
    assert_equal true, player.can_win?
  end
end