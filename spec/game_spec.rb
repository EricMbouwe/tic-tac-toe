require 'game'
require 'player'

describe 'Game' do
  game = Game.new
  player1 = Player.new
  player2 = Player.new

  # rubocop:disable Style/BlockDelimiters
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
  # rubocop:enable Style/BlockDelimiters

  let(:winning) { [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]] }

  describe '#initialize' do
    it 'should create an object without arguments' do
      expect(game.board).to eq(gameboard)
      expect(game.winning).to eq(winning)
    end
  end

  describe '#choose_symbol' do
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

    it 'should check if the move is not valid' do
      expect(game.valid_move?(pos2)).not_to be(true)
    end
  end

  describe '#position_taken?' do
    player1.positions = [1, 2, 3, 9, 4]
    player2.positions = [8, 5, 6]
    let(:pos) { 3 }
    it 'should take positions of both players and check if the position is taken or not' do
      expect(game.position_taken?(pos, player1, player2)).to be true
    end

    it 'should check if the given position is not taken' do
      expect(game.position_taken?(pos, player1, player2)).not_to be false
    end
  end

  describe '#bad_play?' do
    player1.positions = [1, 2, 3, 9, 4]
    player2.positions = [8, 5, 6]
    let(:pos1) { 11 }
    let(:pos2) { 1 }
    it 'should check if the given position is valid' do
      expect(game.bad_play?(pos1, player1, player2)).to be true
    end

    it 'should check if the given position is not valid' do
      expect(game.bad_play?(pos1, player1, player2)).not_to be false
    end

    it 'should check if the given position is taken' do
      expect(game.bad_play?(pos2, player1, player2)).to be true
    end

    it 'should check if the given position is not taken' do
      expect(game.bad_play?(pos2, player1, player2)).not_to be false
    end
  end

  describe '#winner' do
    player1.positions = [1, 2, 3, 9, 4]
    player1.name = 'eric'

    player2.positions = [8, 5, 6, 7]
    player2.name = 'taty'

    it 'should set the current player as the game winner' do
      result = game.winner(winning, player1)
      expect(result.length.positive?).to be true
    end

    it 'should return an empty string when there is no winner' do
      result = game.winner(winning, player2)
      expect(result.length.positive?).not_to be true
    end
  end
end
