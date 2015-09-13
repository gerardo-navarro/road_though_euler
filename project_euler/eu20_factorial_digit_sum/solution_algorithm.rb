class SolutionAlgorithm

  # 1st implementation - Provide complexity
  def SolutionAlgorithm.solve(factor)
    
    result = 0
    (1..factor).inject(:*).to_s.each_char { |digit| result += digit.to_i }

    puts ""
    puts result

    result
  end
 
end