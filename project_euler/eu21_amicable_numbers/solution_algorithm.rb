class SolutionAlgorithm

  # 1st implementation - Provide complexity
  def SolutionAlgorithm.solve(upper_limit)
    
    amicable_number_sum = 0
    divisor_sum_list = Array.new(upper_limit)
    divisor_sum_list[0] = 0

    for a in (1...upper_limit)
      b = divisor_sum_of(a)
      divisor_sum_list[a] = b
      if divisor_sum_list[b] and a != b and a == divisor_sum_list[b]
        amicable_number_sum += a
        amicable_number_sum += b
      end
    end

    result = amicable_number_sum
    puts ""
    puts result

    result
  end

  def SolutionAlgorithm.divisor_sum_of(number)
    
    divisor_sum = -number
    i = 1
    while i*i <= number
      
      if number % i == 0
        divisor_sum += i
        divisor_sum += number / i if i != number / i
      end
      
      if number & 1 == 1 # number % 2 == 0
        i += 2
      else
        i += 1
      end 
    end
    return divisor_sum
  end

end