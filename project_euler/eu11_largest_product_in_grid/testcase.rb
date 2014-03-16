require "./solution_algorithm"
require "test/unit"
require "csv"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_simple_grid1
    grid = grid_from("test_simple_grid1.csv")
    assert_equal(1296, SolutionAlgorithm.largest_product_in_grid(grid))
  end

  def test_simple_grid2
    grid = grid_from("test_simple_grid2.csv")
    assert_equal(6561, SolutionAlgorithm.largest_product_in_grid(grid))
  end

  def test_simple_grid3
    grid = grid_from("test_simple_grid3.csv")
    assert_equal(2401, SolutionAlgorithm.largest_product_in_grid(grid))
  end
  
  def test_simple_grid4
    grid = grid_from("test_simple_grid4.csv")
    assert_equal(4096, SolutionAlgorithm.largest_product_in_grid(grid))
  end
  
  def test_result
    grid = grid_from("test_result_grid.csv")
    assert_equal(70600674, SolutionAlgorithm.largest_product_in_grid(grid))
  end

  def test_hardcore
    grid = grid_from("test_hardcore_grid.csv")
    assert_equal(70600674, SolutionAlgorithm.largest_product_in_grid(grid))
  end
 
  def grid_from(file_path = nil)
    
    grid = []

    CSV.foreach(file_path, :col_sep => " ", :converters => [:integer]) do |row|
      row = row.collect { | row_element | row_element.to_i}
      grid << row
    end

    return grid
  end

end