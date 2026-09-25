# require "minitest/autorun"
require "rspec"
require "assembly_line"

RSpec.describe AssemblyLine do
  context "production_rate_per_hour" do      
    it "Test 1" do
      obj = AssemblyLine.new(1)
      expect(obj.production_rate_per_hour).to eq 221.0
    end

    it "Test 2" do
      obj = AssemblyLine.new(2)
      expect(obj.production_rate_per_hour).to eq 442.0
    end

    it "Test 3" do
      obj = AssemblyLine.new(3)
      expect(obj.production_rate_per_hour).to eq 663.0
    end

    it "Test 4" do
      obj = AssemblyLine.new(4)
      expect(obj.production_rate_per_hour).to eq 884.0
    end

    it "Test 5" do
      obj = AssemblyLine.new(5)
      expect(obj.production_rate_per_hour).to eq 994.5
    end

    it "Test 6" do
      obj = AssemblyLine.new(6)
      expect(obj.production_rate_per_hour).to eq 1193.4
    end

    it "Test 7" do
      obj = AssemblyLine.new(7)
      expect(obj.production_rate_per_hour).to eq 1392.3
    end

    it "Test 8" do
      obj = AssemblyLine.new(8)
      expect(obj.production_rate_per_hour).to eq 1591.2
    end

    it "Test 9" do
      obj = AssemblyLine.new(9)
      expect(obj.production_rate_per_hour).to eq 1591.2
    end

    it "Test 10" do
      obj = AssemblyLine.new(10)
      expect(obj.production_rate_per_hour).to eq 1701.7
    end

    it "Test 10x" do
      obj = AssemblyLine.new(6)
      expect(obj.production_rate_per_hour).to eq 1193.4
    end
  end

  context "working_items_per_minute" do

    it "Test 10y" do
      obj = AssemblyLine.new(10)
      expect(obj.working_items_per_minute).to eq 28
    end

    it "Test 11" do
      obj = AssemblyLine.new(1)
      expect(obj.working_items_per_minute).to eq 3
    end

    it "Test 12" do
      obj = AssemblyLine.new(5)
      expect(obj.working_items_per_minute).to eq 16
    end

    it "Test 13" do
      obj = AssemblyLine.new(8)
      expect(obj.working_items_per_minute).to eq 26
    end

    it "Test 14" do
      obj = AssemblyLine.new(9)
      expect(obj.working_items_per_minute).to eq 26
    end

    it "Test 15" do
      obj = AssemblyLine.new(10)
      expect(obj.working_items_per_minute).to eq 28
    end
  end
end
