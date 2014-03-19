require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_easy
    assert_equal(1, SolutionAlgorithm.solve(2))
    assert_equal(2, SolutionAlgorithm.solve(3))
    assert_equal(3, SolutionAlgorithm.solve(5))
    assert_equal(7, SolutionAlgorithm.solve(8))
    assert_equal(9, SolutionAlgorithm.solve(13))
  end

  def test_result
    SolutionAlgorithm.solve(10**6)
  end
 
end