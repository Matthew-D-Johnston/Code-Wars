# next_polydivisible_num_test.rb

require 'minitest/autorun'
require 'minitest/reporters'

MiniTest::Reporters.use!

require_relative 'next_polydivisible_num'

class NextNumTest < Minitest::Test
  def test_next_num
    assert_equal(1, next_num(0))
    assert_equal(12, next_num(10))
    assert_equal(12, next_num(11))
    assert_equal(1236, next_num(1234))
    assert_equal(123252, next_num(123220))
  end
end
