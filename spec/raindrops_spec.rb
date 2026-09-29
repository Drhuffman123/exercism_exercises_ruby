# Raindrops
require "rspec"
require "raindrops.rb"

RSpec.describe Raindrops do
  context "TAST 1" do
    it "Test 1" do
      actual = Raindrops.convert(1)
      expected = '1'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end

    it "Test 2" do
      actual = Raindrops.convert(3)
      expected = 'Pling'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end

    it "Test 3" do
      actual = Raindrops.convert(5)
      expected = 'Plang'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end
    
    it "Test 4" do
      # Raindrops.convert(7).should eq("Plong")
      actual = Raindrops.convert(7)
      expected = 'Plong'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end

    it "Test 5" do
      # Raindrops.convert(6).should eq("Pling")
      actual = Raindrops.convert(6)
      expected = 'Pling'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end

    it "Test 6" do
      # Raindrops.convert(8).should eq("8")
      actual = Raindrops.convert(8)
      expected = '8'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end

    it "Test 7" do
      # Raindrops.convert(9).should eq("Pling")
      actual = Raindrops.convert(9)
      expected = 'Pling'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end

    it "Test 8" do
      # Raindrops.convert(10).should eq("Plang")
      actual = Raindrops.convert(10)
      expected = 'Plang'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end

    it "Test 9" do
      # Raindrops.convert(14).should eq("Plong")
      actual = Raindrops.convert(14)
      expected = 'Plong'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end

    it "Test 10" do
      # Raindrops.convert(15).should eq("PlingPlang")
      actual = Raindrops.convert(15)
      expected = 'PlingPlang'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end

    it "Test 11" do
      # Raindrops.convert(21).should eq("PlingPlong")
      actual = Raindrops.convert(21)
      expected = 'PlingPlong'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end

    it "Test 12" do
      # Raindrops.convert(25).should eq("Plang")
      actual = Raindrops.convert(25)
      expected = 'Plang'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end

    it "Test 13" do
      # Raindrops.convert(27).should eq("Pling")
      actual = Raindrops.convert(27)
      expected = 'Pling'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end

    it "Test 14" do
      # Raindrops.convert(35).should eq("PlangPlong")
      actual = Raindrops.convert(35)
      expected = 'PlangPlong'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end

    it "Test 15" do
      # Raindrops.convert(49).should eq("Plong")
      actual = Raindrops.convert(49)
      expected = 'Plong'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end

    it "Test 16" do
      # Raindrops.convert(52).should eq("52")
      actual = Raindrops.convert(52)
      expected = '52'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end

    it "Test 17" do
      actual = Raindrops.convert(105)
      expected = 'PlingPlangPlong'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end

    it "Test 18" do
      actual = Raindrops.convert(3125)
      expected = 'Plang'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end
  end
end
