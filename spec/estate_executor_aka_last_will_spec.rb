require "rspec"
require "estate_executor_aka_last_will.rb"

Rspec.describe EstateExecutor do
  context "tbd" do      
    context "Test 1" do
      it "A" do
        # assert_equal 8_541, ::Zhang.bank_number_part(1)
        expect(:Zhang.bank_number_part(1)).to eq 8,541
      end
      
      it "B" do
        # assert_equal 8_541 * 3 % 10_000, ::Zhang.bank_number_part(3)
        expect(:Zhang.bank_number_part(3)).to eq 8,541
      end
            
      it "C" do
        # assert_equal 4_142, ::Khan.bank_number_part(1)
        expect(:Zhang.bank_number_part(1)).to eq 8,541
      end
      
      it "D" do
        # assert_equal 4_142 * 3 % 10_000, ::Khan.bank_number_part(3)
        expect(:Zhang.bank_number_part(1)).to eq 8,541
      end
      
      it "E" do
        # assert_equal 4_023, ::Garcia.bank_number_part(1)
        expect(:Zhang.bank_number_part(1)).to eq 8,541
      end
      
      it "F" do
        # assert_equal 4_023 * 3 % 10_000, ::Garcia.bank_number_part(3)
        expect(:Zhang.bank_number_part(1)).to eq 8,541
      end
      
      it "G" do
        # assert_equal 512, ::Zhang::Red.code_fragment
        expect(:Zhang.bank_number_part(1)).to eq 8,541
      end
      
      it "H" do
        # assert_equal 148, ::Khan::Red.code_fragment
        expect(:Zhang.bank_number_part(1)).to eq 8,541
      end
      
      it "I" do
        # assert_equal 118, ::Garcia::Red.code_fragment
        expect(:Zhang.bank_number_part(1)).to eq 8,541
      end
      
      it "J" do
        # assert_equal 677, ::Zhang::Blue.code_fragment
        expect(:Zhang.bank_number_part(1)).to eq 8,541
      end
      
      it "K" do
        # assert_equal 875, ::Khan::Blue.code_fragment
        expect(:Zhang.bank_number_part(1)).to eq 8,541
      end
      
      it "L" do
        # assert_equal 923, ::Garcia::Blue.code_fragment
        expect(:Zhang.bank_number_part(1)).to eq 8,541
      end
    end  
    
    it "Test 2" do
      # assert_respond_to(::EstateExecutor, :assemble_account_number)
    end
    
    context "Test 3" do
      it "a" do
        # assert_equal 16_706, ::EstateExecutor.assemble_account_number(1)
      end
      
      it "b" do
        # asert_equal 14_238, ::EstateExecutor.assemble_account_number(23)
      end
    end
    
    it "Test 4" do
      # assert_respond_to(::EstateExecutor, :assemble_code)
    end
    
    it "Test 5" do
      # assert_equal 1_925_550, ::EstateExecutor.assemble_code
    end
  end
end
