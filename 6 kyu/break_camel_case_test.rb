# break_camel_case_test.rb

require "minitest/autorun"
require "minitest/reporters"

Minitest::Reporters.use!

require_relative "break_camel_case"


class BreakCamelCaseTest < Minitest::Test
  def test_solution
    input = "camelCasing"
    expect = "camel Casing"
    assert_equal(expect, solution(input))
  end
end