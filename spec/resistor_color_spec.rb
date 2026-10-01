require "rspec"
require "resistor_color"

Rspec.describe ResistorColor do
  context "value" do
    it "Test 1" do
      actual = ResistorColor.color_code('black')
      expected = 0
      # assert_equal expected, actual
      expect(actual).to eq expected
    end
    
    it "Test 2" do
      actual = ResistorColor.color_code('white')
      expected = 9
      # assert_equal expected, actual
      expect(actual).to eq expected
    end
    
    it "Test 3" do
      actual = ResistorColor.color_code('orange')
      expected = 3
      # assert_equal expected, actual
      expect(actual).to eq expected
    end
    
    it "Test 4" do
      expected = %w[black brown red orange yellow green blue violet grey white]
      # assert_equal expected, actual
      expect(ResistorColor::COLORS).to eq expected
    end
  end
end

