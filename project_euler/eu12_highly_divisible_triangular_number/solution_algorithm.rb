class SolutionAlgorithm

  # 1st implementation - O(n + n^2) = O(n^2) 
  # def SolutionAlgorithm.first_number_with_divisor_count_over(divisor_limit)
    
  #   i = 1
  #   max_divisor_count = 0
  #   while true

  #     # O(n)
  #     triangular_number = 0
  #     1.upto(i) do | j |
  #       triangular_number += j
  #     end

  #     divisor_count = 0
  #     # O(n^2)
  #     (1..triangular_number).each do | j |
  #       if divisor_count > max_divisor_count
  #         max_divisor_count = divisor_count
  #         puts divisor_count
  #       end
  #       divisor_count += 1 if triangular_number % j == 0
  #       if divisor_count > divisor_limit
  #         result = triangular_number

  #         puts ""
  #         puts result

  #         return result
  #       end
  #     end

  #     i += 1
  #   end
  # end

  # 2nd implementation - O(1 + )
  # def SolutionAlgorithm.first_number_with_divisor_count_over(divisor_limit)

  #   if divisor_limit < 1
  #     result = 1
  #     puts ""
  #     puts result
  #     return result
  #   end
    
  #   i = 1
  #   max_divisor_count = 0
  #   while true

  #     triangular_number = i * (i + 1) / 2

  #     divisor_count = 1
  #     (1..triangular_number / 2).each do | j |
        
  #       if divisor_count > max_divisor_count
  #         max_divisor_count = divisor_count
  #         puts divisor_count
  #       end

  #       divisor_count += 1 if triangular_number % j == 0
  #       if divisor_count > divisor_limit
  #         result = triangular_number

  #         puts ""
  #         puts result

  #         return result
  #       end
  #     end

  #     i += 1
  #   end
  # end

  # 3rd implementation
  def SolutionAlgorithm.first_number_with_divisor_count_over(divisor_limit)

    triangular_index = (Math.sqrt(2.0 * divisor_limit + 0.25) - 0.5).to_i
    while true

      triangular_number = triangular_index * (triangular_index + 1) / 2
     
      divisor_count = 0
      (1..Math.sqrt(triangular_number).to_i).each do | j |
        
        if triangular_number % j == 0
          divisor_count += 1
          divisor_count += 1 unless triangular_number / j == j
        end

        if divisor_count > divisor_limit
          result = triangular_number

          puts ""
          puts result

          return result
        end
      end 

      triangular_index += 1
    end
  end

end