require "rspec"
require "estate_executor_aka_last_will.rb"

Rspec.describe EstateExecutor do
  context "tbd" do      
    context "Test 1" do
      it "A" do
        # assert_equal 8_541, ::Zhang.bank_number_part(1)
        expect(::Zhang.bank_number_part(1)).to eq 8,541
      end
      
      it "B" do
        # assert_equal 8_541 * 3 % 10_000, ::Zhang.bank_number_part(3)
        expect(::Zhang.bank_number_part(3)).to eq 8_541 * 3 % 10_000
      end
            
      it "C" do
        # assert_equal 4_142, ::Khan.bank_number_part(1)
        expect(::Zhang.bank_number_part(1)).to eq 4_142
      end
      
      it "D" do
        # assert_equal 4_142 * 3 % 10_000, ::Khan.bank_number_part(3)
        expect(::Khan.bank_number_part(3)).to eq 4_142 * 3 % 10_000
      end
      
      it "E" do
        # assert_equal 4_023, ::Garcia.bank_number_part(1)
        expect(::Garcia.bank_number_part(1)).to eq 4_023
      end
      
      it "F" do
        # assert_equal 4_023 * 3 % 10_000, ::Garcia.bank_number_part(3)
        expect(::Garcia.bank_number_part(3)).to eq 4_023
      end
      
      it "G" do
        # assert_equal 512, ::Zhang::Red.code_fragment
        expect(::Zhang::Red.code_fragment).to eq 512
      end
      
      it "H" do
        # assert_equal 148, ::Khan::Red.code_fragment
        expect(::Khan::Red.code_fragment).to eq 148
      end
      
      it "I" do
        # assert_equal 118, ::Garcia::Red.code_fragment
        expect(::Garcia::Red.code_fragment).to eq 118
      end
      
      it "J" do
        # assert_equal 677, ::Zhang::Blue.code_fragment
        expect(::Zhang::Blue.code_fragment).to eq 677
      end
      
      it "K" do
        # assert_equal 875, ::Khan::Blue.code_fragment
        expect(::Khan::Blue.code_fragment).to eq 875
      end
      
      it "L" do
        # assert_equal 923, ::Garcia::Blue.code_fragment
        expect(::Garcia::Blue.code_fragment).to eq 923
      end
    end  
    
    it "Test 2" do
      # assert_respond_to(::EstateExecutor, :assemble_account_number)
      raise "todo"
    end
    
    context "Test 3" do
      pending "a" do
        # assert_equal 16_706, ::EstateExecutor.assemble_account_number(1)
        raise "todo"
      end
      
      pending "b" do
        # asert_equal 14_238, ::EstateExecutor.assemble_account_number(23)
        raise "todo"
      end
    end
    
    pending "Test 4" do
      # assert_respond_to(::EstateExecutor, :assemble_code)
      raise "todo"
    end
    
    pending "Test 5" do
      # assert_equal 1_925_550, ::EstateExecutor.assemble_code
      raise "todo"
    end
  end
end
