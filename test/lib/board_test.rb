require "test_helper"

class BoardTest < Minitest::Test
  def test_create_new_board
		board = TicTacToe::Board.new
		assert_equal '      A   B   C  ', board.board[0]
		assert_equal '2   |   |   |   |', board.board[5]
		assert_equal '    +---+---+---+', board.board[8]
		assert_equal board.open_spaces, ['A1', 'B1', 'C1',
										 'A2', 'B2', 'C2',
										 'A3', 'B3', 'C3']
	end

  def test_update_board
    board = TicTacToe::Board.new
    board.update(piece: 'X', space: 'A1')
    refute_includes board.open_spaces, 'A1'
  end
end