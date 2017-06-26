module GameState
	include Board

	def self.new
		@@board = Board.new
		@@winner = nil
	end

	class << self
		attr_accessor :board, :winner
	end
end