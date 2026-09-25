require "rspec"
require "chess_game"

RSpec.describe Chess do
  context "Constants" do
    it "Test 1" do
      # assert_equal 'A'..'H', Chess::FILES
      expect(Chess::FILES).to eq ('A'..'H')
    end
    
    it "Test 2" do
      # assert_equal 1..8, Chess::RANKS
      expect(Chess::RANKS).to eq (1..8)
    end
  end

  context "valid_square?" do
    it "Test 3" do
      # assert Chess.valid_square?(1, 'A')
      expect(Chess.valid_square?(1, 'A')).to eq true
    end
    
    it "Test 4" do
      # assert Chess.valid_square?(8, 'H')
      expect(Chess.valid_square?(8, 'H')).to eq true
    end
    
    it "Test 5" do
      # refute Chess.valid_square?(9, 'B')
      expect(Chess.valid_square?(9, 'B')).to eq false
    end
    
    it "Test 6" do
      # refute Chess.valid_square?(1, 'I')
      expect(Chess.valid_square?(1, 'I')).to eq false
    end
    
    it "Test 7" do
      # refute Chess.valid_square?(0, 'A')
      expect(Chess.valid_square?(0, 'A')).to false
    end
  end

  context "nickname" do    
    it "Test 8" do
      # assert_equal "JOOE", Chess.nickname("John", "Doe")
      expect(Chess.nickname("John", "Doe")).to eq "JOOE"
    end
    
    it "Test 9" do
      # assert_equal "LILI", Chess.nickname("Lisa", "Li")
      expect(Chess.nickname("Lisa", "Li")).to eq "LILI"
    end
    
    it "Test 10" do
      # assert_equal "DJER", Chess.nickname("Dj", "Walker")
      expect(Chess.nickname("Dj", "Walker")).to eq "DJER"
    end
  end

  context "move_message" do
    it "Test 11" do
      # assert_equal "JOOE moved to A2", Chess.move_message("John", "Doe", "A2")
      expect(Chess.move_message("John", "Doe", "A2")).to eq "JOOE moved to A2"
    end
    
    it "Test 12" do
      # assert_equal "LILI moved to H8", Chess.move_message("Lisa", "Li", "H8")
      expect(Chess.move_message("Lisa", "Li", "H8")).to eq "LILI moved to H8"
    end
    
    it "Test 13" do
      # assert_equal "DJER attempted to move to I9, but that is not a valid square", Chess.move_message("Dj", "Walker", "I9")
      expect(Chess.move_message("Dj", "Walker", "I9")).to eq "DJER attempted to move to I9, but that is not a valid square"
    end
    
    it "Test 14" do
      # assert_equal "TOON attempted to move to A0, but that is not a valid square", Chess.move_message("Tore", "Anderson", "A0")
      expect(Chess.move_message("Tore", "Anderson", "A0")).to eq "TOON attempted to move to A0, but that is not a valid square"
    end
  end
end
