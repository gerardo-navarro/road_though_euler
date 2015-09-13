require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  # def test_easy
  #   assert_equal(23, SolutionAlgorithm.solve)
  # end

  def test_result
    SolutionAlgorithm.solve
  end
 
end