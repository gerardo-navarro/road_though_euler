 
require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_simple
    assert_equal(23, SolutionAlgorithm.muliples_of_3_and_5_for(10))
  end

  def test_hard
    assert_equal(233168, SolutionAlgorithm.muliples_of_3_and_5_for(1000))
  end
 
end