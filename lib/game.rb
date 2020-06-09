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

	def over?
		if :locations == Board.new({
			top: {left: :fake, middle: :fake, right: :fake},
  			middle: {left: :fake, middle: :fake, right: :fake},
  			bottom: {left: :fake, middle: :fake, right: :fake}
			})
			true
		else
			false
		end
	end

	def tie?
		true
	end

end
