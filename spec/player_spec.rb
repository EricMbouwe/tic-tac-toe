require 'player'

describe "Player" do
	player = Player.new

	describe "#initialize" do
		it "should create an object without arguments" do
			player
		end

		it "should accept the instance variable name" do
			name = player.instance_variable_get(:@name)
		end

		it "should accep the instance variable positions which is equal to an empty array" do
			positions = player.instance_variable_get(:@positions)
		end

		it "should accep the instance variable sym which is equal to an empty string" do
			sym = player.instance_variable_get(:@sym)
		end
	end

	describe "#name" do
		it "should get (return) @name" do
        expect(player.name).to be(player.instance_variable_get(:@name))
     end
	end

	describe "#positions" do
		it "should get (return) @positions" do
        expect(player.positions).to be(player.instance_variable_get(:@positions))
     end
	end

	describe "#sym" do
		it "should get (return) @sym" do
        expect(player.sym).to be(player.instance_variable_get(:@sym))
     end
	end

	describe "#move" do
		let(:gameboard) { Array.new(7) {Array.new(3)} }
		let(:position) { 8 }
		let(:sym) { 'x' }
		it "should accept 3 arguments: gameboard, position, sym" do
			expect(player.move).to receive(:gameboard).with('User Action')
			expect(player.move).to receive(:position).with('User Action')
			expect(player.move).to receive(:sym).with('User Action') 
		end

	end
end