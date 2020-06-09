require_relative 'board'

class Game

	attr_accessor :board, :winner

	def initialize(board=nil)
		@board = board
		@winner
	end

	def winner
		@winner
	end
end
