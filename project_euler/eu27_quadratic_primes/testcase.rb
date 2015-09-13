require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_result
    assert_equal(-59231, SolutionAlgorithm.solve)
  end
 
end