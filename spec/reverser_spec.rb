require "rspec"
require "reverser.rb"

Rspec.describe Reverser do
  context "value" do
    it "Test 1" do
      actual = Reverser.reverse("")
      expected = ""
      # assert_equal expected, actual
      expect(expected).to eq actual
    end
    
    it "Test 2" do
      actual = Reverser.reverse("robot")
      expected = "tobor"
      # assert_equal expected, actual
      expect(expected).to eq actual
    end
    
    it "Test 3" do
      actual = Reverser.reverse("Ramen")
      expected = "nemaR"
      # assert_equal expected, actual
      expect(expected).to eq actual
    end
    
    it "Test 4" do
      actual = Reverser.reverse("I'm hungry!")
      expected = "!yrgnuh m'I"
      # assert_equal expected, actual
      expect(expected).to eq actual
    end
    
    it "Test 5" do
      actual = Reverser.reverse("racecar")
      expected = "racecar"
      # assert_equal expected, actual
      expect(expected).to eq actual
    end
    
    it "Test 6" do
      actual = Reverser.reverse("drawer")
      expected = "reward"
      # assert_equal expected, actual
      expect(expected).to eq actual
    end
  end
end
