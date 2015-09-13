require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_easy
    assert_equal(12, SolutionAlgorithm.solve(4.0/10))
  end

  def test_result
    SolutionAlgorithm.solve(15499.0/94744)
  end
 
end