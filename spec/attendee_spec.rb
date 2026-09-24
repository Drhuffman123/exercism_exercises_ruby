# require "minitest/autorun"
require "rspec"
require "attendee"

RSpec.describe Attendee do
  context "test_1" do
    it "default_message" do
      height = 100
      # assert_instance_of Attendee, Attendee.new(height)
      expect(Attendee.new(height)).to be_a Attendee
    end
  end
end

