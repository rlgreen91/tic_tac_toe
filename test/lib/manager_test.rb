require "test_helper"

class ManagerTest < Minitest::Test
  def test_is_valid_piece
    assert_equal true, TicTacToe::Manager.is_valid_piece?(piece: "X")
    assert_equal false, TicTacToe::Manager.is_valid_piece?(piece: "A")
  end
end