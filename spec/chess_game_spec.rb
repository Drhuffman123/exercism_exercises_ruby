require "rspec"
require "chess_game"

RSpec.describe Chess do
  context "Constants" do
    it "Test 1" do
      # assert_equal 'A'..'H', Chess::FILES
      expect(Chess::FILES).to eq ('A'..'H')
    end
  end
end
