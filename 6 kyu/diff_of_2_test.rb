# diff_of_2_test.rb

require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use!

require_relative 'diff_of_2'

class DifferenceOf2 < Minitest::Test
  def test_twos_difference
    assert_equal([[1, 3], [2, 4]], twos_difference([1, 2, 3,4]))
    assert_equal([[1, 3], [4, 6]], twos_difference([1, 3, 4, 6]))
    assert_equal([[1, 3], [3, 5], [4, 6]], twos_difference([6, 3, 4, 1, 5]))
    assert_equal([[1, 3], [3, 5], [6, 8], [8, 10], [10, 12], [12, 14]], twos_difference([1, 3, 5, 6, 8, 10, 15, 32, 12, 14, 56]))
  end
end
