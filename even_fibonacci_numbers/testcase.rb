require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_solution
    assert_equal(10, SolutionAlgorithm.even_fibonacci_numbers_for(10))
    assert_equal(44, SolutionAlgorithm.even_fibonacci_numbers_for(60))
    assert_equal(188, SolutionAlgorithm.even_fibonacci_numbers_for(160))
  end

  def test_problem
    assert(78 < SolutionAlgorithm.even_fibonacci_numbers_for(4000000))
  end
 
end