require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_9
    assert_equal(9, SolutionAlgorithm.largest_palindrome_product_for(1))
  end
  
  def test_9009
    assert_equal(9009, SolutionAlgorithm.largest_palindrome_product_for(2))
  end
  
  def test_assignment # test_906609
    assert_equal(906609, SolutionAlgorithm.largest_palindrome_product_for(3))
  end
  
  def test_99000099
    assert_equal(99000099, SolutionAlgorithm.largest_palindrome_product_for(4))
  end
  
  def test_9966006699
    assert_equal(9966006699, SolutionAlgorithm.largest_palindrome_product_for(5))
  end

  def test_999000000999
    assert_equal(999000000999, SolutionAlgorithm.largest_palindrome_product_for(6))
  end
  
  def test_99956644665999
    assert_equal(99956644665999, SolutionAlgorithm.largest_palindrome_product_for(7))
  end
  
  def test_9999000000009999
    assert_equal(9999000000009999, SolutionAlgorithm.largest_palindrome_product_for(8))
  end

end