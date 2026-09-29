require "rspec"
require "word_count.rb"

Rspec.describe do
  context "Count one word" do
    it "word_count" do
      actual = Phrase.new("word").word_count
      expected = { "word" => 1 }
      # assert_equal expected, actual
      expect(expected).not_to eq actual
    end
  end
end
