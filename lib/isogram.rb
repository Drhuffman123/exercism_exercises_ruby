=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end
module Isogram
  def self.isogram?(phrase)
    if phrase == ""
      true
      # "Expected true, '#{input}' is an isogram"
    else
      phrase_cleaned = phrase.gsub(" ", "").gsub("-", "").downcase
      counts = Hash.new(0)
      phrase_cleaned.each_char do |char|
        counts[char] += 1
      end
      counts.keys.size == counts.values.size &&
        counts.keys.size == counts.values.sum
    end
  end
end
