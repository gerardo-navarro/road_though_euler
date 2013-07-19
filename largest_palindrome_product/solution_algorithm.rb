require "mathn"

class SolutionAlgorithm

  # 1st implementation
  # def SolutionAlgorithm.largest_palindrome_product_for(digit_limit_for_factors)
    
  #   factor_limit = 1
  #   digit_limit_for_factors.times do factor_limit *= 10 end
  #   factor_limit -= 1


  #   max_palindrome = 1
  #   max_i = 1
  #   max_j = 1
  #   factor_limit.downto(3) do |i|

  #     i.downto(3) do |j|

  #       break if i < max_i and j < max_j

  #       palindrome_candidate = i * j
  #       if palindrome_candidate > max_palindrome
  #         if palindrome_candidate.to_s == palindrome_candidate.to_s.reverse
  #           max_palindrome = palindrome_candidate
  #           max_i = i
  #           max_j = j
  #         end
  #       end
  #     end

  #     break if i < max_j
  #   end

  #   puts ""
  #   puts max_i.to_s + ' * ' + max_j.to_s + ' = ' + max_palindrome.to_s
  
  #   max_palindrome
  # end

  # # 2nd implementation
  # def SolutionAlgorithm.largest_palindrome_product_for(digit_limit_for_factors)
    

  #   lower_factor_limit = digit_limit_for_factors > 1 ? 10**(digit_limit_for_factors - 1) : 3
  #   upper_factor_limit = 10**digit_limit_for_factors - 1

  #   max_palindrome = 1
  #   max_i = 1
  #   max_j = 1

    
  #   upper_factor_limit.downto(lower_factor_limit) do |palindrome_half|  
  #     palindrome = (palindrome_half.to_s + palindrome_half.to_s.reverse).to_i

  #     upper_factor_limit.downto(lower_factor_limit) do |divisor_candidate|
  #       if palindrome % divisor_candidate == 0
  #         if (palindrome / divisor_candidate / 10**digit_limit_for_factors) < 1
  #           max_palindrome = palindrome
  #           max_i = divisor_candidate
  #           max_j = palindrome / divisor_candidate

  #           puts ""
  #           puts max_i.to_s + ' * ' + max_j.to_s + ' = ' + max_palindrome.to_s
  #           return max_palindrome
  #         end
  #       else
  #         break if (palindrome / divisor_candidate / 10**digit_limit_for_factors) >= 1
  #       end
  #     end
  #   end

  #   upper_factor_limit.downto(lower_factor_limit) do |palindrome_half|  
  #     palindrome = (palindrome_half.to_s + palindrome_half.to_s.reverse[1..-1]).to_i
  #     # puts palindrome
  #     upper_factor_limit.downto(lower_factor_limit) do |divisor_candidate|
  #       if palindrome % divisor_candidate == 0 and (palindrome / divisor_candidate / 10**digit_limit_for_factors) < 1
  #         # j = palindrome / divisor_candidate
  #         # puts palindrome.to_s + '       ' + divisor_candidate.to_s + '    ' + j.to_s + '     ' + (j / 10**digit_limit_for_factors).to_s
  #         # if (j / 10**digit_limit_for_factors) < 1

  #         max_palindrome = palindrome
  #         max_i = divisor_candidate
  #         max_j = palindrome / divisor_candidate

  #         puts ""
  #         puts max_i.to_s + ' * ' + max_j.to_s + ' = ' + max_palindrome.to_s
  #         return max_palindrome
  #       end
  #     end
  #   end

  #   puts ""
  #   puts max_i.to_s + ' * ' + max_j.to_s + ' = ' + max_palindrome.to_s
  #   return max_palindrome

  # end

  # Cleaned 2nd implementation
  def SolutionAlgorithm.largest_palindrome_product_for(digit_limit_for_factors)
    
    lower_factor_limit = digit_limit_for_factors > 1 ? 10**(digit_limit_for_factors - 1) : 1
    upper_factor_limit = 10**digit_limit_for_factors - 1

    upper_factor_limit.downto(lower_factor_limit) do |palindrome_half|  
      
      palindrome = (palindrome_half.to_s + palindrome_half.to_s.reverse).to_i

      upper_factor_limit.downto(lower_factor_limit) do |divisor_candidate|
        
          return palindrome if palindrome % divisor_candidate == 0 and (palindrome / divisor_candidate / 10**digit_limit_for_factors) < 1

          break if (palindrome / divisor_candidate / 10**digit_limit_for_factors) >= 1
      end
    end

    upper_factor_limit.downto(lower_factor_limit) do |palindrome_half| 
      palindrome = (palindrome_half.to_s + palindrome_half.to_s.reverse[1..-1]).to_i

      upper_factor_limit.downto(lower_factor_limit) do |divisor_candidate|
        
        return palindrome if palindrome % divisor_candidate == 0 and (palindrome / divisor_candidate / 10**digit_limit_for_factors) < 1

        break if (palindrome / divisor_candidate / 10**digit_limit_for_factors) >= 1        
      end
    end

    puts 'No palindrome found'
    return nil

  end

end