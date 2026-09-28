require "rspec"
require "two_fer"

Rspec.describe do
  context "two_fer" do
    it "Test 1" do
      actual = TwoFer.two_fer
      expected = 'One for you, one for me.'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end
    
    it "Test 1" do
      actual = TwoFer.two_fer('Alice')
      expected = 'One for Alice, one for me.'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end
    
    it "Test 1" do
      actual = TwoFer.two_fer('Bob')
      expected = 'One for Bob, one for me.'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end
  end
end
