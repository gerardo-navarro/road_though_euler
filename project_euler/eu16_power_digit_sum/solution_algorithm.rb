class SolutionAlgorithm

  # 1st implementation - O(n+n+n)
  # def SolutionAlgorithm.solve(number)
    
  #   result = number.to_s.split("").inject(0) { |sum, i| sum + i.to_i }

  #   puts ""
  #   puts result

  #   result
  # end


  def SolutionAlgorithm.solve(number)
    
    result = 0
    while number > 0
      puts number.to_s
      result += number % 10
      number /= 10
    end

    puts ""
    puts result

    result
  end
 
end