require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  # def test_easy
  #   assert_equal(23, SolutionAlgorithm.solve("1 Jan 2000", "31 Dec 2000"))
  # end

  def test_result
    start_date = Date.parse("1 Jan 1901")
    end_date = Date.parse("31 Dec 2000")
    SolutionAlgorithm.solve(start_date, end_date)
  end
 
end