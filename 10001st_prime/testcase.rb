require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_2
    assert_equal(2, SolutionAlgorithm.prime_on_position(1))
  end

  def test_3
    assert_equal(3, SolutionAlgorithm.prime_on_position(2))
  end
  
  def test_5
    assert_equal(5, SolutionAlgorithm.prime_on_position(3))
  end

  def test_7
    assert_equal(7, SolutionAlgorithm.prime_on_position(4))
  end

  def test_11
    assert_equal(11, SolutionAlgorithm.prime_on_position(5))
  end

  def test_13
    assert_equal(13, SolutionAlgorithm.prime_on_position(6))
  end

  def test_104743
    assert_equal(104743, SolutionAlgorithm.prime_on_position(10001))
  end
  
  def test_1299709
    assert_equal(1299709, SolutionAlgorithm.prime_on_position(100000))
  end
end