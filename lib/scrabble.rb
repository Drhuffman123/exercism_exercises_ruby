=begin
Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
`scrabble_score_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/scrabble-score` directory.
=end
class Scrabble
  attr_accessor :word, :score
  
  def initialize(word)
    @word = word
    @score = 0
  end
  
  def score # (word)
    @score = 0
    word.upcase.each_char do |char|
      if "QZ".include?(char)
        @score += 10
      elsif "JX".include?(char)
        @score += 8
      elsif "K".include?(char)
        @score += 5
      elsif "FHVWY".include?(char)
        @score += 4
      elsif "BCMP".include?(char)
        @score += 3
      elsif "DG".include?(char)
        @score += 2
      else
        @score += 1
      end
    end
    @score
  end
end
