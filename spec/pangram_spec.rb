require "spec"
require "pangram.rb"

# copy of my Crystal-lang spec:

Rspec.describe Pangram do
  context "Task 1" do
    it "Test 1" do
      sentence = ''
      actual = Pangram.pangram?(sentence)
      expected = false
      # refute actual, "Expected false, got: #{actual.inspect}. #{sentence.inspect} is not a pangram"
      expect(actual).to eq(expected)
    end

    it "test 2" do
      sentence = 'abcdefghijklmnopqrstuvwxyz'
      actual = Pangram.pangram?(sentence)
      expected = true
      expect(actual).to eq(expected)
    end

    it "test 3" do
      sentence = 'the quick brown fox jumps over the lazy dog'
      actual = Pangram.pangram?(sentence)
      expected = true
      expect(actual).to eq(expected)
    end

    it "test 4" do
      sentence = 'a quick movement of the enemy will jeopardize five gunboats'
      actual = Pangram.pangram?(sentence)
      expected = true
      expect(actual).to eq(expected)
    end

    it "test 5" do
      sentence = 'five boxing wizards jump quickly at it'
      actual = Pangram.pangram?(sentence)
      expected = true
      expect(actual).to eq(expected)
    end

    it "test 6" do 
      sentence = 'the_quick_brown_fox_jumps_over_the_lazy_dog'
      actual = Pangram.pangram?(sentence)
      expected = true
      expect(actual).to eq(expected)
    end

    it "test 7" do
      sentence = 'the 1 quick brown fox jumps over the 2 lazy dogs'
      actual = Pangram.pangram?(sentence)
      expected = true
      expect(actual).to eq(expected)
    end

    it "test 8" do
      sentence = '7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog'
      actual = Pangram.pangram?(sentence)
      expected = true
      expect(actual).to eq(expected)
    end

    it "test 9" do
      sentence = '"Five quacking Zephyrs jolt my wax bed."'
      actual = Pangram.pangram?(sentence)
      expected = true
      expect(actual).to eq(expected)
    end

    it "test 10" do
      sentence = 'abcdefghijklm ABCDEFGHIJKLM'
      actual = Pangram.pangram?(sentence)
      expected = false
      expect(actual).to eq(expected)\
    end
  end
end
