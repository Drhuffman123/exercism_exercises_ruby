require "spec"
require "../src/blackjack.cr"

describe Blackjack do
  context "parse_card" do
    it "test 1" do
      # assert_equal 11, Blackjack.parse_card("ace")
      expect(Blackjack.parse_card("ace")).to eq 11
    end
    
    it "test 2" do
      # assert_equal 2, Blackjack.parse_card("two")
    end
    
    it "test 3" do
      # assert_equal 3, Blackjack.parse_card("three")
    end
    
    it "test 4" do
      # assert_equal 4, Blackjack.parse_card("four")
    end
    
    it "test 5" do
      # assert_equal 5, Blackjack.parse_card("five")
    end
    
    it "test 6" do
      # assert_equal 6, Blackjack.parse_card("six")
    end
    
    it "test 7" do
      # assert_equal 7, Blackjack.parse_card("seven")
    end
    
    it "test 8" do
      # assert_equal 8, Blackjack.parse_card("eight")
    end
    
    it "test 9" do
      # assert_equal 9, Blackjack.parse_card("nine")
    end
    
    it "test 10" do
      # assert_equal 10, Blackjack.parse_card("ten")
    end
    
    it "test 11" do
      # assert_equal 10, Blackjack.parse_card("jack")
    end
    
    it "test 12" do
      # assert_equal 10, Blackjack.parse_card("queen")
    end
    
    it "test 13" do
      # assert_equal 10, Blackjack.parse_card("king")
    end
    
    it "test 14" do
      # assert_equal 0, Blackjack.parse_card("joker")
    end
  end
  
  context "card_range" do
    it "test 15" do
      # assert_equal "low", Blackjack.card_range("two", "two")
    end
    
    it "test 16" do
      # assert_equal "low", Blackjack.card_range("three", "four")
    end
    
    it "test 17" do
      # assert_equal "low", Blackjack.card_range("four", "seven")
    end
    
    it "test 18" do
      # assert_equal "mid", Blackjack.card_range("seven", "five")
    end
    
    it "test 19" do
      # assert_equal "mid", Blackjack.card_range("seven", "seven")
    end
    
    it "test 20" do
      # assert_equal "mid", Blackjack.card_range("nine", "seven")
    end
    
    it "test 21" do
      # assert_equal "high", Blackjack.card_range("nine", "eight")
    end
    
    it "test 22" do
      # assert_equal "high", Blackjack.card_range("eight", "queen")
    end
    
    it "test 23" do
      # assert_equal "high", Blackjack.card_range("king", "ten")
    end
    
    it "test 24" do
      # assert_equal "blackjack", Blackjack.card_range("ace", "ten")
    end
  end
  
  context "first_turn" do
    it "test 25" do
      # assert_equal "P", Blackjack.first_turn("ace", "ace", "ace")
    end
    
    it "test 26" do
      # assert_equal "S", Blackjack.first_turn("jack", "jack", "ace")
    end
    
    it "test 27" do
      # assert_equal "S", Blackjack.first_turn("queen", "queen", "ace")
    end
    
    it "test 28" do
      # assert_equal "H", Blackjack.first_turn("two", "two", "ace")
    end
    
    it "test 29" do
      # assert_equal "H", Blackjack.first_turn("five", "five", "ace")
    end
    
    it "test 30" do
      # assert_equal "S", Blackjack.first_turn("ace", "king", "ace")
    end
    
    it "test 31" do
      # assert_equal "S", Blackjack.first_turn("jack", "king", "queen")
    end
    
    it "test 32" do
      # # assert_equal "W", Blackjack.first_turn("ace", "king", "five")
    end
    
    it "test 33" do
      # assert_equal "W", Blackjack.first_turn("ace", "king", "nine")
    end
    
    it "test 34" do
      # assert_equal "S", Blackjack.first_turn("king", "queen", "ace")
    end

    
    it "test 35" do
      # assert_equal "S", Blackjack.first_turn("king", "nine", "ace")
    end
    
    it "test 36" do
      # assert_equal "S", Blackjack.first_turn("queen", "eight", "ace")
    end
    
    it "test 37" do
      # assert_equal "S", Blackjack.first_turn("jack", "seven", "ace")
    end
    
    it "test 38" do
      # # assert_equal "S", Blackjack.first_turn("jack", "six", "six")
    end
    
    it "test 39" do
      # assert_equal "H", Blackjack.first_turn("nine", "seven", "seven")
    end
    
    it "test 40" do
      # assert_equal "H", Blackjack.first_turn("nine", "seven", "ace")
    end
    
    it "test 41" do
      # # assert_equal "S", Blackjack.first_turn("nine", "six", "six")
    end
    
    it "test 42" do
      # assert_equal "H", Blackjack.first_turn("eight", "seven", "seven")
    end
    
    it "test 43" do
      # assert_equal "H", Blackjack.first_turn("six", "nine", "queen")
    end
    
    it "test 44" do
      # # assert_equal "S", Blackjack.first_turn("eight", "six", "six")
    end

    
    it "test 45" do
      # assert_equal "H", Blackjack.first_turn("seven", "seven", "seven")
    end
    
    it "test 46" do
      # assert_equal "H", Blackjack.first_turn("five", "nine", "queen")
    end
    
    it "test 47" do
      # # assert_equal "S", Blackjack.first_turn("seven", "six", "six")
    end
    
    it "test 48" do
      # assert_equal "H", Blackjack.first_turn("six", "seven", "seven")
    end
    
    it "test 49" do
      # assert_equal "H", Blackjack.first_turn("four", "nine", "queen")
    end
    
    it "test 50" do
      # # assert_equal "S", Blackjack.first_turn("six", "six", "six")
    end
    
    it "test 51" do
      # assert_equal "H", Blackjack.first_turn("five", "seven", "seven")
    end
    
    it "test 52" do
      # assert_equal "H", Blackjack.first_turn("three", "nine", "queen")
    end
    
    it "test 53" do
      # assert_equal "H", Blackjack.first_turn("four", "seven", "king")
    end
    
    it "test 54" do
      # assert_equal "H", Blackjack.first_turn("four", "six", "two")
    end

    
    it "test 55" do
      # assert_equal "H", Blackjack.first_turn("two", "three", "queen")
    end
    
    it "test 56" do
      # assert_equal "H", Blackjack.first_turn("two", "two", "five")
    end
  end
end
