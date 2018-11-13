# This is the manager module, responsible for overseeing the game

module TicTacToe
  module Manager

    def self.is_valid_piece?(piece)
      (piece == "X") || (piece == "O")
    end
  end
end