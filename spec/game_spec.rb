require 'game'
require 'player'

describe 'Game' do
    game = Game.new
    let(:gameboard) { [
        ['-------------'],
        ['|', '   ', '|', '   ', '|', '   ', '|'],
        ['-------------'],
        ['|', '   ', '|', '   ', '|', '   ', '|'],
        ['-------------'],
        ['|', '   ', '|', '   ', '|', '   ', '|'],
        ['-------------']
      ]}
    let(:win_arr) { [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]] }
  describe '#initialize' do
    it 'should create an object without arguments' do
        expect(game.board).to eq(gameboard)
        expect(game.winning).to eq(win_arr)
    end
  end

  describe "#add_player" do
      it 'should create a new instance of player' do
        expect(game.add_player).to be(Player.new)
      end
  end

  describe "#choose_symbol" do
    it 'should' do
        
    end
  end
  
  

end