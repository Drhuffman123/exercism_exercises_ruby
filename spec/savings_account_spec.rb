require "rspec"
require "savings_account"

RSpec.describe SavingsAccount do
  context "TAST 1" do
    it "test 1" do
      expect(SavingsAccount.interest_rate(0.0)).to eq(0.5)
    end

    it "test 2" do
      expect(SavingsAccount.interest_rate(0.000001)).to eq(0.5)
    end

    it "test 3" do
      expect(SavingsAccount.interest_rate(999.9999)).to eq(0.5)
    end

    it "test 4" do
      expect(SavingsAccount.interest_rate(1_000.0)).to eq(1.621)
    end

    it "test 5" do
      expect(SavingsAccount.interest_rate(1_000.0001)).to eq(1.621)
    end

    it "test 6" do
      expect(SavingsAccount.interest_rate(4_999.999)).to eq(1.621)
    end

    it "test 7" do
      expect(SavingsAccount.interest_rate(5_000.0)).to eq(2.475)
    end

    it "test 8" do
      expect(SavingsAccount.interest_rate(5_000.0001)).to eq(2.475)
    end

    it "test 9" do
      expect(SavingsAccount.interest_rate(5_639_998.742909)).to eq(2.475)
    end

    it "test 10" do
      expect(SavingsAccount.interest_rate(-0.000001)).to eq(3.213)
    end

    it "test 11" do
      expect(SavingsAccount.interest_rate(-0.123)).to eq(3.213)
    end

    it "test 12" do
      expect(SavingsAccount.interest_rate(-152964.2313)).to eq(3.213)
    end
  end

  context "TASK 2" do
    it "test 13" do
      expect(SavingsAccount.interest(-10000.0)).to eq(-321.3) #, 0.001)
    end

    it "test 14" do
      expect(SavingsAccount.interest(555.55).round(5)).to eq(2.77775) # , 0.001)
    end

    it "test 15" do
      expect(SavingsAccount.interest(4999.99)).to eq(81.0498379) # , 0.001)
    end

    it "test 16" do
      expect(SavingsAccount.interest(34600.80)).to eq(856.3698) # , 0.001)
    end
  end

  context "TASK 3" do
    it "test 17" do
      expect(SavingsAccount.annual_balance_update(0.0)).to eq(0.0) # , 0.001)
    end

    it "test 18" do
      expect(SavingsAccount.annual_balance_update(0.000001)).to eq(0.000001005) # , 0.001)
    end

    pending "test 19" do
      expect(SavingsAccount.annual_balance_update(1_000.0).round(9)).to eq(1016.2101016210) # , 0.001)
    end

    it "test 20" do
      expect(SavingsAccount.annual_balance_update(898124017.826243404425)).to eq(920352587.26744292868451875) # , 0.001)
    end

    it "test 21" do
      expect(SavingsAccount.annual_balance_update(-0.123)).to eq(-0.12695199) # , 0.001)
    end

    it "test 22" do
      expect(SavingsAccount.annual_balance_update(-152964.231)).to eq(-157878.97174203) # , 0.001)
    end
  end

  context "TASK 4" do
    it "test 23" do
      expect(SavingsAccount.years_before_desired_balance(100.0, 125.80)).to eq(47)
    end

    it "test 24" do
      expect(SavingsAccount.years_before_desired_balance(1_000.0, 1_100.0)).to eq(6)
    end

    it "test 25" do
      expect(SavingsAccount.years_before_desired_balance(8_080.80, 9_090.90)).to eq(5)
    end

    it "test 26" do
      expect(SavingsAccount.years_before_desired_balance(2_345.67, 12_345.6789)).to eq(85)
    end
  end
end
