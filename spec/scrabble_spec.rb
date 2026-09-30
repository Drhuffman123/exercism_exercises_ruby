require "rspec"
require "scrabble.cr"

Rspec.describe Scrabble do
  it "lowercase letter" do
    Scrabble.score("a").should eq(1)
  end

  it "uppercase letter" do
    Scrabble.score("A").should eq(1)
  end

  it "valuable letter" do
    Scrabble.score("f").should eq(4)
  end

  it "short word" do
    Scrabble.score("at").should eq(2)
  end

  it "short, valuable word" do
    Scrabble.score("zoo").should eq(12)
  end

  it "medium word" do
    Scrabble.score("street").should eq(6)
  end

  it "medium, valuable word" do
    Scrabble.score("quirky").should eq(22)
  end

  it "long, mixed-case word" do
    Scrabble.score("OxyphenButazone").should eq(41)
  end

  it "english-like word" do
    Scrabble.score("pinata").should eq(8)
  end

  it "empty input" do
    Scrabble.score("").should eq(0)
  end

  it "entire alphabet available" do
    Scrabble.score("abcdefghijklmnopqrstuvwxyz").should eq(87)
  end
end
