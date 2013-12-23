require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_simple
    assert_equal(2, SolutionAlgorithm.sum_of_primes_below(3))
    assert_equal(17, SolutionAlgorithm.sum_of_primes_below(10))
    assert_equal(17, SolutionAlgorithm.sum_of_primes_below(11))
    assert_equal(28, SolutionAlgorithm.sum_of_primes_below(12))
    assert_equal(41, SolutionAlgorithm.sum_of_primes_below(14))
    assert_equal(58, SolutionAlgorithm.sum_of_primes_below(18))
    assert_equal(77, SolutionAlgorithm.sum_of_primes_below(20))
  end

  def test_corner_cases
    assert_equal(0, SolutionAlgorithm.sum_of_primes_below(-1))
    assert_equal(0, SolutionAlgorithm.sum_of_primes_below(0))
    assert_equal(0, SolutionAlgorithm.sum_of_primes_below(1))
    assert_equal(0, SolutionAlgorithm.sum_of_primes_below(2))
  end

  def test_result
    assert_equal(142913828922, SolutionAlgorithm.sum_of_primes_below(2000000))
  end

  def test_hardcore
    SolutionAlgorithm.sum_of_primes_below(20000000)
  end
 
end