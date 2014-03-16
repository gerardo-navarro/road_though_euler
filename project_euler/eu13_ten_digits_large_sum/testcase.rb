require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_easy
    assert_equal(2500, SolutionAlgorithm.solve(read_input_file("test_simple_input.txt")))
  end

  def test_result
    assert_equal(5537376230, SolutionAlgorithm.solve(read_input_file("test_result_input.txt")))
  end

  def test_hard
    SolutionAlgorithm.solve(read_input_file("test_hard_input.txt"))
  end

  private
  def read_input_file(file_name = "test_result_input.txt")
    
    numbers = []

    File.open(file_name, "r") do |infile|
      while (line = infile.gets)
        numbers << line.to_i
      end
    end

    return numbers

  end
 
end