require "spec"
require "pangram.rb"

# copy of my Crystal-lang spec:

Rspec.describe Pangram do
  context "Task 1" do
    it "Test 1" do
      sentence = ''
      actual = Pangram.pangram?(sentence)
      # refute actual, "Expected false, got: #{actual.inspect}. #{sentence.inspect} is not a pangram"
      expect(actual).to eq(false)
    end
  end
end
