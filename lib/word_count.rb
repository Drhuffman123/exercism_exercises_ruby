=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

# Come on Exercism. Make up your mind. You named the file "word_count.rb", but you coded the specs to use "Phrase" for the class. Exercism, please get you naming in order! :)

class Phrase
  def initialize(sentence)
    @sentence = sentence
    @word_count = self.word_count # sentence.split(" ").map {|word| word.to_s => 1}
  end

  def word_count
    @sentence.downcase.scan(/\b[a-z0-9']+\b/).tally
  end
end
