require "mathn"

class SolutionAlgorithm

  # # 1st implementation
  # def SolutionAlgorithm.sum_square_difference_for_numbers_until(range)

  #   sum_of_squares = 0
  #   square_of_sum = 0
  #   1.upto(range) do |number_in_range|
  #     sum_of_squares += number_in_range**2
  #     square_of_sum += number_in_range
  #   end

  #   difference = square_of_sum**2 - sum_of_squares
  #   puts ""
  #   puts difference.to_s
  
  #   difference
  # end

  # 2nd implementation
  def SolutionAlgorithm.sum_square_difference_for_numbers_until(range)

    sum_of_squares = (2*range**3 + 3*range**2 + range) / 6
    square_of_sum = ((range**2 + range) / 2)**2

    difference = square_of_sum - sum_of_squares
    puts ""
    puts difference.to_s
  
    difference
  end
end