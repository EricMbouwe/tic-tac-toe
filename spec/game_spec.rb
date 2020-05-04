require 'game'
require 'player'

describe 'Game' do
  game = Game.new
  let(:gameboard) {
    [
      ['-------------'],
      ['|', '   ', '|', '   ', '|', '   ', '|'],
      ['-------------'],
      ['|', '   ', '|', '   ', '|', '   ', '|'],
      ['-------------'],
      ['|', '   ', '|', '   ', '|', '   ', '|'],
      ['-------------']
    ]
  }
  let(:win_arr) { [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]] }
  describe '#initialize' do
    it 'should create an object without arguments' do
      expect(game.board).to eq(gameboard)
      expect(game.winning).to eq(win_arr)
    end
  end

  # describe "#add_player" do
  #     it 'should create a new instance of player' do
  #       expect(game.add_player).to be(Player.new)
  #     end
  # end

  describe "#choose_symbol" do
    player1 = Player.new
    player2 = Player.new
    let(:choice) { 'O' }

    it 'should set a sym to player1' do
      game.choose_symbol(choice, player1, player2)
      expect(player1.sym).to eql('O')
    end

    it 'should set a sym to player2' do
      game.choose_symbol(choice, player1, player2)
      expect(player2.sym).to eq('X')
    end
  end

  describe '#valid_move?' do
    let(:pos1) { 9 }
    let(:pos2) { 14 }
    it 'should check if the move is valid' do
      expect(game.valid_move?(pos1)).to be(true)
    end

    it 'should check if the move is invalid' do
      expect(game.valid_move?(pos2)).to be(false)
    end
  end
end
