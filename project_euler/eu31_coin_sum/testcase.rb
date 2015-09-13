require "./solution_algorithm"
require "minitest/autorun"
 
class ProblemTestCase < MiniTest::Test

  def test_edges
    assert_equal(0, SolutionAlgorithm.solve(0))
    assert_equal(0, SolutionAlgorithm.solve(-1))
    assert_equal(0, SolutionAlgorithm.solve(-100))
    assert_equal(0, SolutionAlgorithm.solve(nil))
  end

  def test_easy
    assert_equal(1, SolutionAlgorithm.solve(1))
    assert_equal(2, SolutionAlgorithm.solve(2))
    assert_equal(2, SolutionAlgorithm.solve(3))
    assert_equal(3, SolutionAlgorithm.solve(4))
    assert_equal(4, SolutionAlgorithm.solve(5))
    assert_equal(5, SolutionAlgorithm.solve(6))
    assert_equal(6, SolutionAlgorithm.solve(7))
    assert_equal(11, SolutionAlgorithm.solve(10))
  end

  def test_result
    assert_equal(73682, SolutionAlgorithm.solve(200))
  end
 
end