require "rspec"
require "luhn.rb"

RSpec.describe Luhn do
  context "false" do
    it "single digit strings can not be valid" do
      expect(Luhn.valid?("1")).to be false
    end

    it "a single zero is invalid" do
      expect(Luhn.valid?("0")).to be false
    end

    it "invalid Canadian SIN" do
      expect(Luhn.valid?("055 444 286")).to be false
    end

    it "invalid credit card" do
      expect(Luhn.valid?("8273 1232 7352 0569")).to be false
    end

    it "invalid long number with an even remainder" do
      expect(Luhn.valid?("1 2345 6789 1234 5678 9012")).to be false
    end

    it "invalid long number with a remainder divisible by 5" do
      expect(Luhn.valid?("1 2345 6789 1234 5678 9013")).to be false
    end

    it "valid strings with a non-digit added at the end become invalid" do
      expect(Luhn.valid?("059a")).to be false
    end

    it "valid strings with punctuation included become invalid" do
      expect(Luhn.valid?("055-444-285")).to be false
    end

    it "valid strings with symbols included become invalid" do
      expect(Luhn.valid?("055# 444$ 285")).to be false
    end

    it "single zero with space is invalid" do
      expect(Luhn.valid?(" 0")).to be false
    end

    it "using ascii value for non-doubled non-digit isn't allowed" do
      expect(Luhn.valid?("055b 444 285")).to be false
    end

    it "using ascii value for doubled non-digit isn't allowed" do
      expect(Luhn.valid?(":9")).to be false
    end

    it "non-numeric, non-space char in the middle with a sum that's divisible by 10 isn't allowed" do
      expect(Luhn.valid?("59%59")).to be false
    end
  end

  context "true" do
    it "a simple valid SIN that remains valid if reversed" do
      expect(Luhn.valid?("059")).to be true
    end

    it "a simple valid SIN that becomes invalid if reversed" do
      expect(Luhn.valid?("59")).to be true
    end

    it "a valid Canadian SIN" do
      expect(Luhn.valid?("055 444 285")).to be true
    end

    it "valid number with an even number of digits" do
      expect(Luhn.valid?("095 245 88")).to be true
    end

    it "valid number with an odd number of spaces" do
      expect(Luhn.valid?("234 567 891 234")).to be true
    end

    it "more than a single zero is valid" do
      expect(Luhn.valid?("0000 0")).to be true
    end

    it "input digit 9 is correctly converted to output digit 9" do
      expect(Luhn.valid?("091")).to be true
    end

    it "very long input is valid" do
      expect(Luhn.valid?("9999999999 9999999999 9999999999 9999999999")).to be true
    end

    it "valid luhn with an odd number of digits and non zero first digit" do
      expect(Luhn.valid?("109")).to be true
    end
  end
end
