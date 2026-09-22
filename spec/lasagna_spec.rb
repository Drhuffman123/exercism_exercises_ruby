# lasagna_spec.rb
# frozen_string_literal: true

require 'minitest/autorun'

require_relative '../lib/lasagna.rb'

class LasagnaTest < Minitest::Test
  def test_expected_mins_in_oven
    assert_equal 40, Lasagna::EXPECTED_MINUTES_IN_OVEN
  end
end
