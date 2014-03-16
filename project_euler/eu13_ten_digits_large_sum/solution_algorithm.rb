class SolutionAlgorithm

  # 1st implementation - Provide complexity
  def SolutionAlgorithm.solve(numbers)
    
    sum = numbers.inject(0) { |sum, number| sum + number }
    result = sum.to_s[0...10].to_i
    puts ""
    puts result

    result
  end
 
end