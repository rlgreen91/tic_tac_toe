# This is the manager module, responsible for overseeing the game
module TicTacToe
  module Manager
    WINNING_COMBOS = Set.new [
      Set.new(['A1', 'A2', 'A3']),
      Set.new(['B1', 'B2', 'B3']),
      Set.new(['C1', 'C2', 'C3']),
      Set.new(['A1', 'B1', 'C1']),
      Set.new(['A2', 'B2', 'C2']),
      Set.new(['A3', 'B3', 'C3']),
      Set.new(['A1', 'B2', 'C3']),
      Set.new(['C1', 'B2', 'A3'])
    ].freeze

    def self.is_valid_piece?(piece: piece)
      (piece == "X") || (piece == "O")
    end

    def self.is_winner?(board: board, player: player)
      winning_combos = self.possible_winning_combos(board: board, player: player)
      winning_combos.each { |combo| return true if player.occupied_spaces >= combo }
    end

    def self.possible_winning_combos(board: board, player: player)
      open_spaces = board.open_spaces
      player_spaces = player.occupied_spaces
      WINNING_COMBOS.select { |combo| (open_spaces | player_spaces) >= combo }
    end

    def self.is_open_space?(board: board, position: position)
      return true if board.open_spaces.include?(position)
      raise ArgumentError, "Invalid selection for position"
    end
  end
end