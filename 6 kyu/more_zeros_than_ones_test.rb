# more_zeros_than_ones_test.rb

require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use!

require_relative 'more_zeros_than_ones'

class MoreZerosThanOnesTest < Minitest::Test
  def test_more_zeros
    assert_equal(['a','b','d'], more_zeros('abcde'))
    assert_equal(['a', ' ', 'b', '!'], more_zeros('Great job!'))
    assert_equal(['D','I','E','T'], more_zeros('DIGEST'))
    assert_equal(['a','b','d'], more_zeros('abcdeabcde'))
  end
end