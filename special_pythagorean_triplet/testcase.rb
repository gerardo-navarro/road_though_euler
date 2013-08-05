require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_nil
    assert_equal(nil, SolutionAlgorithm.special_pythagorean_triplet_for(10))
  end

  def test_60
    assert_equal(60, SolutionAlgorithm.special_pythagorean_triplet_for(12))
  end

  def test_31875000
    assert_equal(31875000, SolutionAlgorithm.special_pythagorean_triplet_for(1000))
  end

end