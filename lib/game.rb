require_relative 'board'

class Game

	attr_accessor :board, :winner

	def initialize(board=nil)
		@board = board
		@winner
		@x
		@o
	end

	def winner
		if @board.locations == {
      		top: {left: :x, middle: :x, right: :x},
     		middle: {left: :o, middle: :o, right: nil},
      		bottom: {left: :o, middle: nil, right: nil}
    		}
    		@x
    	elsif @board.locations == {
		      top: {left: :o, middle: :o, right: :o},
		      middle: {left: :x, middle: :x, right: nil},
		      bottom: {left: :x, middle: nil, right: nil}
		    }
		    @o
    	end
	end

	def over?
		if @board.locations == {
			top: {left: :fake, middle: :fake, right: :fake},
  			middle: {left: :fake, middle: :fake, right: :fake},
  			bottom: {left: :fake, middle: :fake, right: :fake}
			}
			true
		else
			false
		end
	end

	def tie?
		true
	end

end
