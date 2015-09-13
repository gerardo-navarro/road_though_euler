require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_easy

    assert_equal(385, SolutionAlgorithm.solve(read_name_list_from("names_simple.txt")))
  end

  def test_result
    assert_equal(871198282, SolutionAlgorithm.solve(read_name_list_from("names.txt")))
  end

  def test_hard
    SolutionAlgorithm.solve(read_name_list_from("names_hard.txt"))
  end


  def read_name_list_from(file_name = "names.txt")

    names = []

    File.open(file_name, "r") do |infile|
      while (line = infile.gets)
        line.chomp[1..-2].split("\",\"").each do |name|
          names << name.chomp
        end
      end
    end

    return names

  end
 
end