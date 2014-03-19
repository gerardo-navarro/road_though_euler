require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_easy
    assert_equal(26, SolutionAlgorithm.solve(2**15))
  end

  def test_result
    assert_equal(1366, SolutionAlgorithm.solve(2**1000))
  end

  def test_hard
    SolutionAlgorithm.solve(9**1000000)
  end
 
end