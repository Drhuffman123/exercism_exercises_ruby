# lasagna_spec.rb
# frozen_string_literal: true

require 'minitest/autorun'

require_relative '../lib/lasagna.rb'

class LasagnaTest < Minitest::Test
  def test_1
    assert_equal 40, Lasagna::EXPECTED_MINUTES_IN_OVEN
  end

  def test_2
    assert_equal 15, Lasagna.new.remaining_minutes_in_oven(25)
  end
end
