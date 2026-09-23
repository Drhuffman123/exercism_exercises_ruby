# lasagna_spec.rb
# frozen_string_literal: true

# require "minitest/autorun"
require "rspec"

# require "lasagna"
require_relative '../lib/lasagna.rb'

RSpec.describe Lasagna do
  context "test_1" do
    it "default_message" do
      expect(Lasagna::EXPECTED_MINUTES_IN_OVEN).to eq 40
    end
  end
  
  context "test_2" do
    it "default_message" do
      expect(Lasagna.new.remaining_minutes_in_oven(25)).to eq 15
    end
  end
end
