require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_easy
    assert_equal(1, SolutionAlgorithm.solve(1))
    assert_equal(2, SolutionAlgorithm.solve(2))
    assert_equal(6, SolutionAlgorithm.solve(3))
    assert_equal(6, SolutionAlgorithm.solve(4))
    assert_equal(3, SolutionAlgorithm.solve(5))
    assert_equal(9, SolutionAlgorithm.solve(6))
    assert_equal(9, SolutionAlgorithm.solve(7))
    assert_equal(9, SolutionAlgorithm.solve(8))
    assert_equal(27, SolutionAlgorithm.solve(9))
    assert_equal(27, SolutionAlgorithm.solve(10))
    assert_equal(36, SolutionAlgorithm.solve(11))
    (11..20).each { |i| SolutionAlgorithm.solve(i) }
  end

  def test_result
    assert_equal(648, SolutionAlgorithm.solve(100))
  end
 
end