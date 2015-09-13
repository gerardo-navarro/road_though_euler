require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_81
    assert_equal(2427, SolutionAlgorithm.solve_81(read_input_file("matrix_simple.txt")))
    assert_equal(427337, SolutionAlgorithm.solve_81(read_input_file("matrix.txt")))
  end

  def test_82
    assert_equal(994, SolutionAlgorithm.solve_82(read_input_file("matrix_simple.txt")))
    assert_equal(13, SolutionAlgorithm.solve_82(read_input_file("matrix_extreme.txt")))
    assert_equal(260324, SolutionAlgorithm.solve_82(read_input_file("matrix.txt")))
  end

  def test_83
    assert_equal(2297, SolutionAlgorithm.solve_83(read_input_file("matrix_simple.txt")))
    assert_equal(1007, SolutionAlgorithm.solve_83(read_input_file("matrix_extreme.txt")))
    assert_equal(425185, SolutionAlgorithm.solve_83(read_input_file("matrix.txt")))
  end

 
  private
  def read_input_file(file_name = "matrix.txt")
    
    matrix = []

    File.open(file_name, "r") do |infile|
      while (line = infile.gets)
        matrix << line.split(",").map { |i| i.to_i}
      end
    end

    return matrix

  end
end