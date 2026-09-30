require "rspec"
require "twelve_days.rb"

RSpec.describe TwelveDays do
  describe "entire" do
    it "song" do
      song_file = File.expand_path('song.txt', __dir__)
      expected = IO.read(song_file)
      # assert_equal expected, TwelveDays.song
      expect(TwelveDays.song).to eq expected
    end
  end

  describe "verses" do
    it "1" do
      expected = "On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree.\n\n" # "
      expect(TwelveDays.verse(1)).to eq expected
    end

    it "2" do
      expected = "On the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree.\n\n" # \n\n"
      expect(TwelveDays.verse(2)).to eq expected
    end

    it "3" do
      expected = "On the third day of Christmas my true love gave to me: three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n"
      expect(TwelveDays.verse(3)).to eq expected
    end

    it "4" do
      expected = "On the fourth day of Christmas my true love gave to me: four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n"
      expect(TwelveDays.verse(4)).to eq expected
    end

    it "5" do
      expected = "On the fifth day of Christmas my true love gave to me: five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n"
      expect(TwelveDays.verse(5)).to eq expected
    end

    it "6" do
      expected = "On the sixth day of Christmas my true love gave to me: six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n"
      expect(TwelveDays.verse(6)).to eq expected
    end

    it "7" do
      expected = "On the seventh day of Christmas my true love gave to me: seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n"
      expect(TwelveDays.verse(7)).to eq expected
    end

    it "8" do
      expected = "On the eighth day of Christmas my true love gave to me: eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n"
      expect(TwelveDays.verse(8)).to eq expected
    end

    it "9" do
      expected = "On the ninth day of Christmas my true love gave to me: nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n"
      expect(TwelveDays.verse(9)).to eq expected
    end

    it "10" do
      expected = "On the tenth day of Christmas my true love gave to me: ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n"
      expect(TwelveDays.verse(10)).to eq expected
    end

    it "11" do
      expected = "On the eleventh day of Christmas my true love gave to me: eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n"

      expect(TwelveDays.verse(11)).to eq expected
    end

    it "12" do
      expected = "On the twelfth day of Christmas my true love gave to me: twelve Drummers Drumming, eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.\n\n"
      actual = TwelveDays.verse(12)
      expect(actual).to eq expected
    end
  end
end
