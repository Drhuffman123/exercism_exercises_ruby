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
      expect(Blackjack.parse_card("two")).to eq 2
    end
    
    it "test 3" do
      # assert_equal 3, Blackjack.parse_card("three")
      expect(Blackjack.parse_card("three")).to eq 3
    end
    
    it "test 4" do
      # assert_equal 4, Blackjack.parse_card("four")
      expect(Blackjack.parse_card("four")).to eq 4
    end
    
    it "test 5" do
      # assert_equal 5, Blackjack.parse_card("five")
      expect(Blackjack.parse_card("five")).to eq 5
    end
    
    it "test 6" do
      # assert_equal 6, Blackjack.parse_card("six")
      expect(Blackjack.parse_card("six")).to eq 6
    end
    
    it "test 7" do
      # assert_equal 7, Blackjack.parse_card("seven")
      expect(Blackjack.parse_card("seven")).to eq 7
    end
    
    it "test 8" do
      # assert_equal 8, Blackjack.parse_card("eight")
      expect(Blackjack.parse_card("eight")).to eq 8
    end
    
    it "test 9" do
      # assert_equal 9, Blackjack.parse_card("nine")
      expect(Blackjack.parse_card("nine")).to eq 9
    end
    
    it "test 10" do
      # assert_equal 10, Blackjack.parse_card("ten")
      expect(Blackjack.parse_card("ten")).to eq 10
    end
    
    it "test 11" do
      # assert_equal 10, Blackjack.parse_card("jack")
      expect(Blackjack.parse_card("jack")).to eq 10
    end
    
    it "test 12" do
      # assert_equal 10, Blackjack.parse_card("queen")
      expect(Blackjack.parse_card("queen")).to eq 10
    end
    
    it "test 13" do
      # assert_equal 10, Blackjack.parse_card("king")
      expect(Blackjack.parse_card("king")).to eq 10
    end
    
    it "test 14" do
      # assert_equal 0, Blackjack.parse_card("joker")
      expect(Blackjack.parse_card("joker")).to eq 0
    end
  end
  
  context "card_range" do
    context "low" do
      it "test 15" do
        # assert_equal "low", Blackjack.card_range("two", "two")
        expect(Blackjack.card_range("two", "two")).to eq "low"
      end
      
      it "test 16" do
        # assert_equal "low", Blackjack.card_range("three", "four")
        expect(Blackjack.card_range("three", "four")).to eq "low"
      end
      
      it "test 17" do
        # assert_equal "low", Blackjack.card_range("four", "seven")
        expect(Blackjack.card_range("four", "seven")).to eq "low"
      end
    end
    
    context "mid" do
      it "test 18" do
        # assert_equal "mid", Blackjack.card_range("seven", "five")
        expect(Blackjack.card_range("seven", "five")).to eq "mid"
      end
      
      it "test 19" do
        # assert_equal "mid", Blackjack.card_range("seven", "seven")
        expect(Blackjack.card_range("seven", "seven")).to eq "mid"
      end
      
      it "test 20" do
        # assert_equal "mid", Blackjack.card_range("nine", "seven")
        expect(Blackjack.card_range("nine", "seven")).to eq "mid"
      end
    end
    
    context "high" do
      it "test 21" do
        # assert_equal "high", Blackjack.card_range("nine", "eight")
        expect(Blackjack.card_range("nine", "eight")).to eq "high"
      end
      
      it "test 22" do
        # assert_equal "high", Blackjack.card_range("eight", "queen")
        expect(Blackjack.card_range("eight", "queen")).to eq "high"
      end
      
      it "test 23" do
        # assert_equal "high", Blackjack.card_range("king", "ten")
        expect(Blackjack.card_range("king", "ten")).to eq "high"
      end
    end
    
    context "blackjack"
      it "test 24" do
        # assert_equal "blackjack", Blackjack.card_range("ace", "ten")
        expect(Blackjack.card_range("ace", "ten")).to eq "blackjack"
      end
    end
  end
  
  context "first_turn" do
    context "P"
      it "test 25" do
        # assert_equal "P", Blackjack.first_turn("ace", "ace", "ace")
        expect(Blackjack.card_range("ace", "ace", "ace")).to eq "P"
      end
    end

    context "S"
      it "test 26" do
        # assert_equal "S", Blackjack.first_turn("jack", "jack", "ace")
        expect(Blackjack.card_range("jack", "jack", "ace")).to eq "S"
      end

      it "test 27" do
        # assert_equal "S", Blackjack.first_turn("queen", "queen", "ace")
        expect(Blackjack.card_range("queen", "queen", "ace")).to eq "S"
      end
      
      it "test 30" do
        # assert_equal "S", Blackjack.first_turn("ace", "king", "ace")
        expect(Blackjack.card_range("ace", "king", "ace")).to eq "S"
      end
      
      it "test 31" do
        # assert_equal "S", Blackjack.first_turn("jack", "king", "queen")
        expect(Blackjack.card_range("jack", "king", "queen")).to eq "S"
      end
      
      it "test 34" do
        # assert_equal "S", Blackjack.first_turn("king", "queen", "ace")
        expect(Blackjack.card_range("king", "queen", "ace")).to eq "S"
      end  
      
      it "test 35" do
        # assert_equal "S", Blackjack.first_turn("king", "nine", "ace")
        expect(Blackjack.card_range("king", "nine", "ace")).to eq "S"
      end
      
      it "test 36" do
        # assert_equal "S", Blackjack.first_turn("queen", "eight", "ace")
        expect(Blackjack.card_range("queen", "eight", "ace")).to eq "S"
      end
      
      it "test 37" do
        # assert_equal "S", Blackjack.first_turn("jack", "seven", "ace")
        expect(Blackjack.card_range("jack", "seven", "ace")).to eq "S"
      end
      
      it "test 38" do
        # # assert_equal "S", Blackjack.first_turn("jack", "six", "six")
        expect(Blackjack.card_range("jack", "six", "six")).to eq "S"
      end
      
      it "test 41" do
        # # assert_equal "S", Blackjack.first_turn("nine", "six", "six")
        expect(Blackjack.card_range("nine", "six", "six")).to eq "S"
      end
      
      it "test 44" do
        # # assert_equal "S", Blackjack.first_turn("eight", "six", "six")
        expect(Blackjack.card_range("eight", "six", "six")).to eq "S"
      end
      
      it "test 47" do
        # # assert_equal "S", Blackjack.first_turn("seven", "six", "six")
        expect(Blackjack.card_range("seven", "six", "six")).to eq "S"
      end
      
      it "test 50" do
        # # assert_equal "S", Blackjack.first_turn("six", "six", "six")
        expect(Blackjack.card_range("six", "six", "six")).to eq "S"
      end
    end
    
    
    context "H"
      it "test 28" do
        # assert_equal "H", Blackjack.first_turn("two", "two", "ace")
        expect(Blackjack.card_range("two", "two", "ace")).to eq "H"
      end

      it "test 29" do
        # assert_equal "H", Blackjack.first_turn("five", "five", "ace")
        expect(Blackjack.card_range("five", "five", "ace")).to eq "H"
      end
      
      it "test 39" do
        # assert_equal "H", Blackjack.first_turn("nine", "seven", "seven")
        expect(Blackjack.card_range("nine", "seven", "seven")).to eq "H"
      end
      
      it "test 40" do
        # assert_equal "H", Blackjack.first_turn("nine", "seven", "ace")
        expect(Blackjack.card_range("nine", "seven", "ace")).to eq "H"
      end
      
      it "test 42" do
        # assert_equal "H", Blackjack.first_turn("eight", "seven", "seven")
        expect(Blackjack.card_range("eight", "seven", "seven")).to eq "H"
      end
      
      it "test 43" do
        # assert_equal "H", Blackjack.first_turn("six", "nine", "queen")
        expect(Blackjack.card_range("six", "nine", "queen")).to eq "H"
      end
      
      it "test 45" do
        # assert_equal "H", Blackjack.first_turn("seven", "seven", "seven")
        expect(Blackjack.card_range("seven", "seven", "seven")).to eq "H"
      end
      
      it "test 46" do
        # assert_equal "H", Blackjack.first_turn("five", "nine", "queen")
        expect(Blackjack.card_range("five", "nine", "queen")).to eq "H"
      end
      
      it "test 48" do
        # assert_equal "H", Blackjack.first_turn("six", "seven", "seven")
        expect(Blackjack.card_range("six", "seven", "seven")).to eq "H"
      end
      
      it "test 49" do
        # assert_equal "H", Blackjack.first_turn("four", "nine", "queen")
        expect(Blackjack.card_range("four", "nine", "queen")).to eq "H"
      end
      
      it "test 51" do
        # assert_equal "H", Blackjack.first_turn("five", "seven", "seven")
        expect(Blackjack.card_range("five", "seven", "seven")).to eq "H"
      end
      
      it "test 52" do
        # assert_equal "H", Blackjack.first_turn("three", "nine", "queen")
        expect(Blackjack.card_range("three", "nine", "queen")).to eq "H"
      end
      
      it "test 53" do
        # assert_equal "H", Blackjack.first_turn("four", "seven", "king")
        expect(Blackjack.card_range("four", "seven", "king")).to eq "H"
      end
      
      it "test 54" do
        # assert_equal "H", Blackjack.first_turn("four", "six", "two")
        expect(Blackjack.card_range("four", "six", "two")).to eq "H"
      end
        
      it "test 55" do
        # assert_equal "H", Blackjack.first_turn("two", "three", "queen")
        expect(Blackjack.card_range("two", "three", "queen")).to eq "H"
      end
      
      it "test 56" do
        # assert_equal "H", Blackjack.first_turn("two", "two", "five")
        expect(Blackjack.card_range("two", "two", "five")).to eq "H"
      end
    end

    context "W" do      
      it "test 32" do
        # # assert_equal "W", Blackjack.first_turn("ace", "king", "five")
        expect(Blackjack.card_range("ace", "king", "five")).to eq "W"
      end
      
      it "test 33" do
        # assert_equal "W", Blackjack.first_turn("ace", "king", "nine")
        expect(Blackjack.card_range("ace", "king", "nine")).to eq "W"
      end
    end
  
  end
end
