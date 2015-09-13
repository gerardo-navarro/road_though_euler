require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_easy
    assert_equal(0, SolutionAlgorithm.solve(0))
    assert_equal(0, SolutionAlgorithm.solve(1))
    assert_equal(0, SolutionAlgorithm.solve(2))
  end

  def test_result
    assert_equal(31626, SolutionAlgorithm.solve(10000))
  end
 
end