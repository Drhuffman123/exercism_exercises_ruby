require "rspec"
require "word_count.rb"

Rspec.describe do
  context "word_count" do
      it "Test 1 : Count one word" do
        actual = Phrase.new("word").word_count
        expected = { "word" => 1 }
        # assert_equal expected, actual
        expect(expected).to eq actual
      end
    
      it "Test 2 : Count one of each word" do
        actual = Phrase.new("one of each").word_count
        expected = { "one" => 1, "of" => 1, "each" => 1 }
        # assert_equal expected, actual
        expect(expected).to eq actual
      end

      it "Test 3 : Multiple occurances of a word" do
        actual = Phrase.new("one fish two fish red fish blue fish").word_count
        expected = { "one" => 1, "fish" => 4, "two" => 1, "red" => 1, "blue" => 1 }
        # assert_equal expected, actual
        expect(expected).to eq actual
      end

      it "Test 4 : Handles cramped list" do
        actual = Phrase.new("one,two,three").word_count
        expected = { "one" => 1, "two" => 1, "three" => 1 }
        # assert_equal expected, actual
        expect(expected).to eq actual
      end

      it "Test 5 : Handles expanded list" do
        actual = Phrase.new("one,
          two,
          three").word_count
        expected = { "one" => 1, "two" => 1, "three" => 1 }
        # assert_equal expected, actual
        expect(expected).to eq actual
      end

      it "Test 6 : Ignore puncuation" do
        actual = Phrase.new("car: carpet as java: javascript!!&@$%^&").word_count
        expected = { "car" => 1, "carpet" => 1, "as" => 1, "java" => 1, "javascript" => 1 }
        # assert_equal expected, actual
        expect(expected).to eq actual
      end

      it "Test 7 : Include numbers" do
        actual = Phrase.new("testing, 1, 2 testing").word_count
        expected = { "testing" => 2, "1" => 1, "2" => 1 }
        # assert_equal expected, actual
        expect(expected).to eq actual
      end

      it "Test 8 : Normalize case" do
        actual = Phrase.new("go Go GO Stop stop").word_count
        expected = { "go" => 3, "stop" => 2 }
        # assert_equal expected, actual
        expect(expected).to eq actual
      end

      it "Test 9 : With apostrophy" do
        actual = Phrase.new("'First: don't laugh. Then: don't cry. You're getting it.'").word_count
        expected = { "first" => 1, "don't" => 2, "laugh" => 1, "then" => 1, "cry" => 1, "you're" => 1, "getting" => 1, "it" => 1 }
        # assert_equal expected, actual
        expect(expected).to eq actual
      end

      it "Test 10 : With quotations" do
        actual = Phrase.new("Joe can't tell between 'large' and large.").word_count
        expected = { "joe" => 1, "can't" => 1, "tell" => 1, "between" => 1, "large" => 2, "and" => 1 }
        # assert_equal expected, actual
        expect(expected).to eq actual
      end

      it "Test 11 : Substrings from the beginning" do
        actual = Phrase.new("Joe can't tell between app, apple and a.").word_count
        expected = { "joe" => 1, "can't" => 1, "tell" => 1, "between" => 1, "app" => 1, "apple" => 1, "and" => 1, "a" => 1 }
        # assert_equal expected, actual
        expect(expected).to eq actual
      end

      it "Test 12 : Multiple spaces not detected as a word" do
        actual = Phrase.new(" multiple   whitespaces").word_count
        expected = { "multiple" => 1, "whitespaces" => 1 }
        # assert_equal expected, actual
        expect(expected).to eq actual
      end

      it "Test 13 : Alternate separators not detexted as a word" do
        actual = Phrase.new(",
          ,one,
          ,two
          'three'").word_count
        expected = { "one" => 1, "two" => 1, "three" => 1 }
        # assert_equal expected, actual
        expect(expected).to eq actual
      end

      it "Test 14 : Quotations for word with apostrophe" do
        actual = Phrase.new("can, can't, 'can't'").word_count
        expected = { "can" => 1, "can't" => 2 }
        # assert_equal expected, actual
        expect(expected).to eq actual
      end

      it "This ***SHOULD*** FAIL"
        expect(1).to eq false
      end
    end
  end
end
