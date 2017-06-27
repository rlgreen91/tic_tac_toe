require "test_helper"

class ComputerTest < Minitest::Test

	def test_create_new_computer_player
		computer = Computer.new("X")
		assert_equal "X", computer.piece
		assert_equal [], computer.possible_winning_combos
	end
end