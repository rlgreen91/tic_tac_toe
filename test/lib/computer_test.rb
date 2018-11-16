require "test_helper"

class ComputerTest < Minitest::Test
	def test_create_new_computer_player
		computer = TicTacToe::Computer.new(piece: "X")
		assert_equal "X", computer.piece
	end

  def test_computer_picks_space
    computer = TicTacToe::Computer.new(piece: "X")
    open_spaces = ['A1', 'B1']
    assert open_spaces.include? computer.pick_position(open_spaces: open_spaces)
  end
end