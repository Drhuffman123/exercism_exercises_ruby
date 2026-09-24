# require "minitest/autorun"
require "rspec"
require "attendee"

RSpec.describe Attendee do
  context "Test new Attendee" do
    it "new Attendee" do
      height = 100
      # assert_instance_of Attendee, Attendee.new(height)
      expect(Attendee.new(height)).to be_a Attendee
    end
  end

  context "Test Revised Attendee" do
    it "Test 1" do
      # refute Attendee.new(100).has_pass?
      expect(Attendee.new(100).has_pass?).to be false
    end

    it "Test 2" do
      attendee = Attendee.new(100)
      attendee.issue_pass!(1)
      # assert attendee.has_pass?
      expect(attendee.has_pass?).to be true
    end

    it "Test 3" do
      attendee = Attendee.new(100)
      attendee.issue_pass!(1)
      attendee.revoke_pass!
      # refute attendee.has_pass?
      expect(attendee.has_pass?).to be false
    end
    
    it "Test 4" do
      # assert Attendee.new(100).fits_ride?(100)
      expect(Attendee.new(100).fits_ride?(100)).to be true
    end
    
    it "Test 5" do
      # assert Attendee.new(100).fits_ride?(80)
      expect(Attendee.new(100).fits_ride?(80)).to be true
    end
    
    it "Test 6" do
      # assert Attendee.new(100).fits_ride?(110)
      expect(Attendee.new(100).fits_ride?(110)).to be false
    end
    
    it "Test 7" do
      # refute Attendee.new(100).allowed_to_ride?(100)
      expect(Attendee.new(100).allowed_to_ride?(100)).to be false
    end

    it "Test 8" do
      attendee = Attendee.new(100)
      attendee.issue_pass!(1)
      # assert attendee.allowed_to_ride?(100)
      expect(attendee.allowed_to_ride?(100)).to be true
    end

    it "Test 9" do
      attendee = Attendee.new(100)
      attendee.issue_pass!(1)
      # refute attendee.allowed_to_ride?(120)
      expect(attendee.allowed_to_ride?(120)).to be false
    end
  end
end

