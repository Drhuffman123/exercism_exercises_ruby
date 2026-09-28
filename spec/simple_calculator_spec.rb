# require "minitest/autorun"
require "rspec"
require "attendee" # This should be renamed to "simple_calculator". Come on Github! Get your github actions to property flag failing specs!

RSpec.describe SimpleCalculator do
  # THIS SHOULD NOT HAVE PASSED the spec tests! Comeon Github! I just copied another spec file and renamed it; I didn't even update the contents to use the correct class.  :(
  
  context "calculate" do
    it "Test 1" do
      # assert_equal '22 + 25 = 47', SimpleCalculator.calculate(22, 25, '+')
      expect(SimpleCalculator.calculate(22, 25, '+')).to eq '22 + 25 = 47' 
    end
    
    it "Test 2" do
      # assert_equal '3 * 21 = 63', SimpleCalculator.calculate(3, 21, '*')
      expect(SimpleCalculator.calculate(3, 21, '*')).to eq '3 * 21 = 63',
    end

    it "Test 3" do
      # assert_equal '72 / 9 = 8', SimpleCalculator.calculate(72, 9, '/')
      expect(SimpleCalculator.calculate(72, 9, '/')).to eq '72 / 9 = 8' 
    end

    it "Test 4" do
      # assert_equal "Division by zero is not allowed.", SimpleCalculator.calculate(33, 0, "/")
      expect(SimpleCalculator.calculate(33, 0, "/")).to eq "Division by zero is not allowed."
    end

    it "Test 5" do
      # assert_raises(ArgumentError) { SimpleCalculator.calculate('1', 2, '+') }
      expect(SimpleCalculator.calculate('1', 2, '+')).to raise_expecation ArgumentError
    end

    it "Test 6" do
      # assert_raises(ArgumentError) { SimpleCalculator.calculate(1, '2', '+') }
      expect(SimpleCalculator.calculate(1, '2', '+')).to raise_expecation ArgumentError
    end

    it "Test 7" do
      # assert_raises(SimpleCalculator::UnsupportedOperation) { SimpleCalculator.calculate(1, 2, '**') }
      expect(SimpleCalculator.calculate(1, 2, '**')).to raise_expecation SimpleCalculator::UnsupportedOperation
    end

    it "Test 8" do
      # assert_raises(SimpleCalculator::UnsupportedOperation) { SimpleCalculator.calculate(1, 2, nil) }
      expect(SimpleCalculator.calculate(1, 2, nil)).to raise_expecation SimpleCalculator::UnsupportedOperation
    end

    it "Test 9" do
      # assert_raises(SimpleCalculator::UnsupportedOperation) { SimpleCalculator.calculate(1, 2, '') }
      expect(SimpleCalculator.calculate(1, 2, '')).to raise_expecation SimpleCalculator::UnsupportedOperation
    end

  end
end
