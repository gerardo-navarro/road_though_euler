require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_easy
    assert_equal(23, SolutionAlgorithm.solve(easy_triangle))
  end
  
  def test_easy_test_file
    assert_equal(1420, SolutionAlgorithm.solve(read_triangle_from("easy_triangle.txt")))
  end

  def test_moderate_test_file
    assert_equal(2336, SolutionAlgorithm.solve(read_triangle_from("moderate_triangle.txt")))
  end

  def test_result_for_problem_18
    assert_equal(1074, SolutionAlgorithm.solve(problem_18_triangle))
  end
  
  def test_result_for_problem_67
    assert_equal(7273, SolutionAlgorithm.solve(read_triangle_from))
  end

  private 
  def easy_triangle
    [
      3,
      7, 4,
      2, 4, 6,
      8, 5, 9, 3
    ]
  end

  def problem_18_triangle
    [
      75,
      95, 64,
      17, 47, 82,
      18, 35, 87, 10,
      20, 4,  82, 47, 65,
      19, 1,  23, 75, 3,  34,
      88, 2,  77, 73, 7,  63, 67,
      99, 65, 4,  28, 6,  16, 70, 92,
      41, 41, 26, 56, 83, 40, 80, 70, 33,
      41, 48, 72, 33, 47, 32, 37, 16, 94, 29,
      53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14,
      70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57,
      91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48,
      63, 66, 4,  68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31,
      4,  62, 98, 27, 23, 9,  70, 98, 73, 93, 38, 53, 60, 4, 23
    ]
  end

  def read_triangle_from(file_name = "problem_67_triangle.txt")

    triangle = []

    File.open(file_name, "r") do |infile|
      while (line = infile.gets)
        line.chomp.split(" ").each do |triangle_elem|
          triangle << triangle_elem.to_i
        end
      end
    end

    return triangle

  end
 
end