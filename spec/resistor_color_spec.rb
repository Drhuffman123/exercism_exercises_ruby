require "rspec"
require "resistor_color"

Rspec.describe ResistorColorDuo do
  context "value" do
    it "Test 1" do
      actual = ResistorColorDuo.value(%w[brown black])
      expected = 10
      # assert_equal expected, actual
      expect(actual).to eq expected
    end
    
    it "Test 2" do
      actual = ResistorColorDuo.value(%w[blue grey])
      expected = 68
      # assert_equal expected, actual
      expect(actual).to eq expected
    end
    
    it "Test 3" do
      actual = ResistorColorDuo.value(%w[yellow violet])
      expected = 47
      # assert_equal expected, actual
      expect(actual).to eq expected
    end
    
    it "Test 4" do
      actual = ResistorColorDuo.value(%w[white red])
      expected = 92
      # assert_equal expected, actual
      expect(actual).to eq expected
    end
    
    it "Test 5" do
      actual = ResistorColorDuo.value(%w[orange orange])
      expected = 33
      # assert_equal expected, actual
      expect(actual).to eq expected
    end
    
    it "Test 6" do
      actual = ResistorColorDuo.value(%w[green brown orange])
      expected = 51
      # assert_equal expected, actual
      expect(actual).to eq expected
    end
    
    it "Test 7" do
      actual = ResistorColorDuo.value(%w[black brown])
      expected = 1
      # assert_equal expected, actual
      expect(actual).to eq expected
    end
  end
end

