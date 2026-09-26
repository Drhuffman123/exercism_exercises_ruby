# require "minitest/autorun"
require "rspec"
require "assembly_line"

RSpec.describe AssemblyLine do
  context "last_week" do      
    it "Test 1" do
      # assert_equal [0, 2, 5, 3, 7, 8, 4], BirdCount.last_week
      expect(BirdCount.last_week).to be [0, 2, 5, 3, 7, 8, 4]
    end   
  end
  
  context "yesterday" do      
    it "Test 2" do
      # assert_equal 1, BirdCount.new([0, 0, 1, 0, 0, 1, 0]).yesterday
      expect(BirdCount.new([0, 0, 1, 0, 0, 1, 0]).yesterday).to be 1
    end    
    
    it "Test 3" do
      # assert_equal 7, BirdCount.new([8, 8, 9, 5, 4, 7, 10]).yesterday
      expect(BirdCount.new([8, 8, 9, 5, 4, 7, 10]).yesterday).to be 7
    end 
  end
      
  context "total" do      
    it "Test 4" do
      # assert_equal 2, BirdCount.new([0, 0, 1, 0, 0, 1, 0]).total
      expect(BirdCount.new([0, 0, 1, 0, 0, 1, 0])).total).to be 2
    end    

    it "Test 5" do
      # assert_equal 65, BirdCount.new([5, 9, 12, 6, 8, 8, 17]).total
      expect(BirdCount.new([5, 9, 12, 6, 8, 8, 17])).total).to be 65
    end    
  end
      
  context "busy_days" do      
    it "Test 6" do
      # assert_equal 0, BirdCount.new([1, 1, 1, 0, 0, 0, 0]).busy_days
      expect(BirdCount.new([1, 1, 1, 0, 0, 0, 0]).busy_days).to be 0
    end    
       
    it "Test 7" do
      # assert_equal 0, BirdCount.new([1, 1, 1, 0, 0, 0, 0]).busy_days
      expect(BirdCount.new([1, 1, 1, 0, 0, 0, 0]).busy_days).to be 0
    end    
  end
    
  context "day_without_birds" do      
    it "Test 8" do
      # assert BirdCount.new([5, 5, 4, 0, 7, 6]).day_without_birds?
      expect(BirdCount.new([5, 5, 4, 0, 7, 6]).day_without_birds?).to be true
    end    
       
    it "Test 9" do
      # refute BirdCount.new([4, 5, 9, 10, 9, 4, 3]).day_without_birds?
      expect(BirdCount.new([4, 5, 9, 10, 9, 4, 3]).day_without_birds?).to be false
    end    
  end    
end
