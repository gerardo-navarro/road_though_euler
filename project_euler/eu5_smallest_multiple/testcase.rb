require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_6
    assert_equal(6, SolutionAlgorithm.smallest_multiple_for_numbers_until(3))
  end

  def test_12
    assert_equal(12, SolutionAlgorithm.smallest_multiple_for_numbers_until(4))
  end

  def test_30
    assert_equal(60, SolutionAlgorithm.smallest_multiple_for_numbers_until(5))
  end

  def test_2520
    assert_equal(2520, SolutionAlgorithm.smallest_multiple_for_numbers_until(10))
  end
  
  def test_232792560
    assert_equal(232792560, SolutionAlgorithm.smallest_multiple_for_numbers_until(20))
  end

  def test_3099044504245996706400
    assert_equal(3099044504245996706400, SolutionAlgorithm.smallest_multiple_for_numbers_until(50))
  end
  
end