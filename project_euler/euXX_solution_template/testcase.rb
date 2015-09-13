require "./solution_algorithm"
require "minitest/autorun"
 
class ProblemTestCase < MiniTest::Test

  def test_easy
    assert_equal(23, SolutionAlgorithm.solve(XXXXXXXX))
  end

  def test_result
    SolutionAlgorithm.solve(XXXXXXXX)
  end
 
end