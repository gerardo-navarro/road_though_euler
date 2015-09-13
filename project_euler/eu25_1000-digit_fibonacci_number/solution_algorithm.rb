class SolutionAlgorithm

  # 1st implementation - Provide complexity
  # def SolutionAlgorithm.solve(number_digit_size)

  #   if number_digit_size == 1
  #     fibonacci_index = 0
  #     puts ""
  #     puts fibonacci_index
  #     return fibonacci_index
  #   end

  #   last_fibonacci = 1
  #   second_last_fibonacci = 0
  #   current_fibonacci = 1
  #   current_fibonacci_index = 2

  #   while (current_fibonacci / 10**(number_digit_size-1)) < 1
  #     second_last_fibonacci = last_fibonacci
  #     last_fibonacci = current_fibonacci
  #     current_fibonacci = last_fibonacci + second_last_fibonacci
  #     current_fibonacci_index += 1
  #   end 
    
  #   result = current_fibonacci_index
  #   puts ""
  #   puts result

  #   result
  # end

  def SolutionAlgorithm.solve(number_digit_size)
  
    if number_digit_size == 1
      fibonacci_index = 0
      puts ""
      puts fibonacci_index
      return fibonacci_index
    end

    sqrt_5 = Math.sqrt(5)
    phi = (1+sqrt_5)/2
    result = ((number_digit_size-1)*Math.log(10) + Math.log(sqrt_5)) / Math.log(phi)
    result = (result+0.5).round
    puts ""
    puts result

    result
  end

 
end