require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_128
    assert_equal(70, SolutionAlgorithm.sum_square_difference_for_numbers_until(4))
  end

  def test_1092
    assert_equal(1092, SolutionAlgorithm.sum_square_difference_for_numbers_until(8))
  end
  
  def test_2640
    assert_equal(2640, SolutionAlgorithm.sum_square_difference_for_numbers_until(10))
  end

  def test_25164150
    assert_equal(25164150, SolutionAlgorithm.sum_square_difference_for_numbers_until(100))
  end

end