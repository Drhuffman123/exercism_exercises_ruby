require "spec"
require "space_age.rb"

# copy of my Crystal-lang spec:

Rspec.describe SpaceAge do
  context "Task 1" do
    it "Test 1" do
      actual = SpaceAge.new(1_000_000_000).on_earth
      expected = 31.69
      # assert_equal 'PNG', Acronym.abbreviate('Portable Network Graphics')
      expect(actual).to eq expected
    end
    
    it "Test 2" do
      actual = SpaceAge.new(2_134_835_688).on_mercury
      expected = 280.88
      # assert_equal 'PNG', Acronym.abbreviate('Portable Network Graphics')
      expect(actual).to eq expected
    end
    
    it "Test 3" do
      actual = SpaceAge.new(189_839_836).on_venus
      expected = 9.78
      # assert_equal 'PNG', Acronym.abbreviate('Portable Network Graphics')
      expect(actual).to eq expected
    end
    
    it "Test 4" do
      actual = SpaceAge.new(2_129_871_239).on_mars
      expected = 35.88
      # assert_equal 'PNG', Acronym.abbreviate('Portable Network Graphics')
      expect(actual).to eq expected
    end
    
    it "Test 5" do
      actual = SpaceAge.new(901_876_382).on_jupiter
      expected = 2.41
      # assert_equal 'PNG', Acronym.abbreviate('Portable Network Graphics')
      expect(actual).to eq expected
    end
    
    it "Test 6" do
      actual = SpaceAge.new(2_000_000_000).on_saturn
      expected = 2.15
      # assert_equal 'PNG', Acronym.abbreviate('Portable Network Graphics')
      expect(actual).to eq expected
    end
    
    it "Test 7" do
      actual = SpaceAge.new(1_210_123_456).on_uranus
      expected = 0.46
      # assert_equal 'PNG', Acronym.abbreviate('Portable Network Graphics')
      expect(actual).to eq expected
    end
    
    it "Test 8" do
      actual = SpaceAge.new(1_821_023_456).on_neptune
      expected = 0.35
      # assert_equal 'PNG', Acronym.abbreviate('Portable Network Graphics')
      expect(actual).to eq expected
    end
  end
end
