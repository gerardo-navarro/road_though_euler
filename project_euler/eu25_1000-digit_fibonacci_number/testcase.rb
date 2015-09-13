require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_easy
    assert_equal(0, SolutionAlgorithm.solve(1))
    assert_equal(7, SolutionAlgorithm.solve(2))
    assert_equal(12, SolutionAlgorithm.solve(3))
    assert_equal(17, SolutionAlgorithm.solve(4))
    assert_equal(21, SolutionAlgorithm.solve(5))
    assert_equal(26, SolutionAlgorithm.solve(6))
    assert_equal(31, SolutionAlgorithm.solve(7))
  end

  def test_result
    SolutionAlgorithm.solve(1000)
  end
 
end