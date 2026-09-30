=begin
Write your code for the 'Twelve Days' exercise in this file. Make the tests in
`twelve_days_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/twelve-days` directory.
=end
# require "humanize"

class TwelveDays
  def self.humanize_12(num)
    if num == 1
      "first"
    elsif num == 2
      "second"
    elsif num == 3
      "third"
    elsif num == 4
      "fourth"
    elsif num == 5
      "fifth"
    elsif num == 6
      "sixth"
    elsif num == 7
      "seventh"
    elsif num == 8
      "eighth"
    elsif num == 9
      "ninth"
    elsif num == 10
      "tenth"
    elsif num == 11
      "eleventh"
    elsif num == 12
      "twelfth"
    end
  end

  def self.verse_part(num)
    if num == 1
      "a Partridge in a Pear Tree." + "\n\n"
    elsif num == 2
      "two Turtle Doves, and " + verse_part(num - 1)
    elsif num == 3
      "three French Hens, " + verse_part(num - 1)
    elsif num == 4
      "four Calling Birds, " + verse_part(num - 1)
    elsif num == 5
      "five Gold Rings, " + verse_part(num - 1)
    elsif num == 6
      "six Geese-a-Laying, " + verse_part(num - 1)
    elsif num == 7
      "seven Swans-a-Swimming, " + verse_part(num - 1)
    elsif num == 8
      "eight Maids-a-Milking, " + verse_part(num - 1)
    elsif num == 9
      "nine Ladies Dancing, " + verse_part(num - 1)
    elsif num == 10
      "ten Lords-a-Leaping, " + verse_part(num - 1)
    elsif num == 11
      "eleven Pipers Piping, " + verse_part(num - 1)
    elsif num == 12
      "twelve Drummers Drumming, " + verse_part(num - 1)
    end
  end

  def self.verse(num)
    "On the #{humanize_12(num)} day of Christmas my true love gave to me: #{verse_part(num)}"
  end
  
  def self.song
    (1..12).map { |num| verse(num).to_s }.join().chop!
  end
end
