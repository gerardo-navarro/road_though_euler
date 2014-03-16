require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_aimple
    assert_equal(1, SolutionAlgorithm.first_number_with_divisor_count_over(0))
    assert_equal(3, SolutionAlgorithm.first_number_with_divisor_count_over(1))
    assert_equal(6, SolutionAlgorithm.first_number_with_divisor_count_over(3))
    assert_equal(28, SolutionAlgorithm.first_number_with_divisor_count_over(5))
  end

  def test_result
    assert_equal(76576500, SolutionAlgorithm.first_number_with_divisor_count_over(500))
  end

  def test_uber_case
    assert_equal(842161320, SolutionAlgorithm.first_number_with_divisor_count_over(1000))
    # SolutionAlgorithm.first_number_with_divisor_count_over(10000)
  end
 
end