require 'game'
require 'player'

describe 'Game' do
  game = Game.new
  player1 = Player.new
  player2 = Player.new
  let(:choice) { 'O' }
  let(:position) { 1 }
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
  let(:winning) { [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]] }

  describe '#initialize' do
    it 'should create an object without arguments' do
      expect(game.board).to eq(gameboard)
      expect(game.winning).to eq(winning)
    end
  end

  describe "#choose_symbol" do
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

  describe "#position_taken?" do
    it "should take position of both players and players as arguments and check if the position is taken" do
      game.position_taken?(position, player1, player2)
      player1.positions.push(position)
      player2.positions.push(position)
      player1.positions.each do |number|
        expect(game.position_taken?(number, player1, player2)).to be true
      end
    end
  end

  describe "#bad_play?" do
    let(:pos) { 11 }
    it "should check if the given numbers are between 1 and 9 and also check if position is not already taken" do
      expect(game.valid_move?(position)).to be true
      expect(game.valid_move?(pos)).to be false
      expect(game.position_taken?(position, player1, player2)).to be true  
    end   
  end

  describe "#winner" do
    player1.positions.push(1)
    player1.positions.push(2)
    player1.positions.push(3)
    player1.name = 'eric'

    player2.positions.push(8)
    player2.positions.push(5)
    player2.name = 'taty'

    it "should set the current player as the game winner" do
      result = game.winner(winning, player1)
      expect(result.length.positive?).to be true
    end

    it "should return an empty string when there is no winner" do
      result = game.winner(winning, player2)
      expect(result.length.positive?).to be false
    end
  end
end

