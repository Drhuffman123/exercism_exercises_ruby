require "rspec"
require "squares.rb"

RSpec.describe Squares do
  context "square_of_sum" do
    it "Test 1" do
      actual = Squares.new(1).square_of_sum
      expected = 1
      expect(actual).to eq expected
    end
    
    it "Test 2" do
      actual = Squares.new(5).square_of_sum
      expected = 225
      expect(actual).to eq expected
    end
    
    it "Test 3" do
      actual = Squares.new(100).square_of_sum
      expected = 25_502_500
      expect(actual).to eq expected
    end
  end

  context "sum_of_squares" do
    it "Test 4" do
      actual = Squares.new(1).sum_of_squares
      expected = 1
      expect(actual).to eq expected
    end
    
    it "Test 5" do
      actual = Squares.new(1).sum_of_squares
      expected = 55
      expect(actual).to eq expected
    end
    
    it "Test 6" do
      actual = Squares.new(1).sum_of_squares
      expected = 338_350
      expect(actual).to eq expected
    end
    
  end

  context "difference" do
    it "Test 7" do
      actual = Squares.new(1).difference
      expected = 0
      expect(actual).to eq expected
    end
    
    it "Test 8" do
      actual = Squares.new(1).difference
      expected = 170
      expect(actual).to eq expected
    end
    
    it "Test 9" do
      actual = Squares.new(1).difference
      expected = 25_164_150
      expect(actual).to eq expected
    end
  end
end
