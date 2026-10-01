require "rspec"
require 'time'
require "gigasecond.rb"

RSpec.describe Gigasecond do
  it "Test 1" do
    # assert_equal Time.parse('2043-01-01T01:46:40 UTC'), Gigasecond.from(Time.parse('2011-04-25T00:00:00 UTC'))
    expect(Gigasecond.from(Time.parse('2011-04-25T00:00:00 UTC'))).to eq(Time.parse('2043-01-01T01:46:40 UTC'))
  end

  it "Test 2" do
    # assert_equal Time.parse('2009-02-19T01:46:40 UTC'), Gigasecond.from(Time.parse('1977-06-13T00:00:00 UTC'))
    expect(Gigasecond.from(Time.parse('1977-06-13T00:00:00 UTC'))).to eq Time.parse('2009-02-19T01:46:40 UTC')
  end

  it "Test 3" do
    # assert_equal Time.parse('1991-03-27T01:46:40 UTC'), Gigasecond.from(Time.parse('1959-07-19T00:00:00 UTC'))
    expect(Gigasecond.from(Time.parse('1959-07-19T00:00:00 UTC'))).to eq Time.parse('1991-03-27T01:46:40 UTC')
  end

  it "Test 4" do
    # assert_equal Time.parse('2046-10-02T23:46:40 UTC'), Gigasecond.from(Time.parse('2015-01-24T22:00:00 UTC'))
    expect(Gigasecond.from(Time.parse('2015-01-24T22:00:00 UTC'))).to eq Time.parse('2046-10-02T23:46:40 UTC')
  end

  it "Test 5" do
    # assert_equal Time.parse('2046-10-03T01:46:39 UTC'), Gigasecond.from(Time.parse('2015-01-24T23:59:59 UTC'))
    expect(Gigasecond.from(Time.parse('2015-01-24T23:59:59 UTC'))).to eq Time.parse('2046-10-03T01:46:39 UTC')
  end
end

