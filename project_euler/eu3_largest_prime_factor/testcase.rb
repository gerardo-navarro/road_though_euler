require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_8
    assert_equal(2, SolutionAlgorithm.largest_prime_factor_for(8))
  end

  def test_21
    assert_equal(7, SolutionAlgorithm.largest_prime_factor_for(21))
  end
  
  def test_1001
    assert_equal(13, SolutionAlgorithm.largest_prime_factor_for(1001))
  end
  
  def test_4294967296
    assert_equal(2, SolutionAlgorithm.largest_prime_factor_for(4294967296))
  end

  def test_600851475143
    assert_equal(6857, SolutionAlgorithm.largest_prime_factor_for(600851475143))
  end

  def test_60085147514300000
    SolutionAlgorithm.largest_prime_factor_for(60085147514300000)
  end
 
end