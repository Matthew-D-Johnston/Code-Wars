# dead_fish_test.rb

require "minitest/autorun"
require "minitest/reporters"

Minitest::Reporters.use!

require_relative 'dead_fish'

class MakeDeadfishSwim < Minitest::Test
  def test_parse
    assert_equal([8, 64], parse("iiisdoso"))
    assert_equal([0, 0, 0], parse("ooo"))
    assert_equal([1, 2, 3], parse("ioioio"))
    assert_equal([0, 1], parse("idoiido"))
    assert_equal([1, 4, 25], parse("isoisoiso"))
    assert_equal([0], parse("codewars"))
  end
end
