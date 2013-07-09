 
require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_simple
    assert_equal(23, SolutionAlgorithm.muliples_of_3_and_5_for(10))
  end

  def test_overlapping_case
    assert_equal(78, SolutionAlgorithm.muliples_of_3_and_5_for(20))
  end

  def test_hard
    assert_equal(233168, SolutionAlgorithm.muliples_of_3_and_5_for(1000))
    assert(233168 < SolutionAlgorithm.muliples_of_3_and_5_for(1000000000))
  end
 
end