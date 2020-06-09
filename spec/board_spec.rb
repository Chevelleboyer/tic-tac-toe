require_relative '../lib/board'

describe 'A Tic Tac Toe board' do

  # it 'needs covered with tests' do
  #   fail 'See spec/board_spec.rb'
  # end

  it "exists" do
  	Board.new
  end

  it "has locations" do
	expect(Board.new).to respond_to(:locations)
  end

  it "resets locations" do
  	board = Board.new
  	board.reset
  	expect(board.locations).to eq(    {
      top: {left: nil, middle: nil, right: nil},
      middle: {left: nil, middle: nil, right: nil},
      bottom: {left: nil, middle: nil, right: nil}
    })
   end

end
