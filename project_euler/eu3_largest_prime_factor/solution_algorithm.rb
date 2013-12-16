require "mathn"

class SolutionAlgorithm

  # # 1st implementation - 22156s
  # def SolutionAlgorithm.largest_prime_factor_for(number)
    
  #   if number % 2 == 0
  #     largest_prime_factor = 2
  #   else
  #     largest_prime_factor = 1
  #   end
  #   current_prime_factor = 3

  #   prime_factors = []
  #   while current_prime_factor < number
      
  #     if number % current_prime_factor == 0
  #       current_prime_factor_is_prime = prime_factors.inject(true) do |result, prime|
  #         result and current_prime_factor % prime != 0
  #       end

  #       if current_prime_factor_is_prime
  #         prime_factors << current_prime_factor
  #         largest_prime_factor = current_prime_factor
  #       end
  #     end

  #     current_prime_factor += 2
  #   end

  #   puts ""
  #   puts largest_prime_factor
  
  #   largest_prime_factor
  # end

  # # 2nd implementation - 0.001260s
  # def SolutionAlgorithm.largest_prime_factor_for(number)
    
  #   largest_prime_factor = 1
  #   prime_factor = 1

  #   while number > prime_factor do 
  #     prime_factor = SolutionAlgorithm.find_prime_factor_for(number)
  #     puts number.to_s + '    ' + prime_factor.to_s
  #     largest_prime_factor = prime_factor if largest_prime_factor < prime_factor
  #     number /= prime_factor
  #   end

  #   puts ""
  #   puts largest_prime_factor
  #   largest_prime_factor
  # end

  # def SolutionAlgorithm.find_prime_factor_for(number) 

  #   prime_factor_candidate = 2
  #   i = 1
  #   while prime_factor_candidate * prime_factor_candidate <= number do
  #     return prime_factor_candidate if number % prime_factor_candidate == 0
  #     prime_factor_candidate = 2 * i + 1
  #     i += 1
  #   end

  #   number
  # end

  
  # 3rd implementation - 0.002109s
  def SolutionAlgorithm.largest_prime_factor_for(number)

    i = 2
    while i <= number
      if number % i == 0
        number /= i    
      else
        i += 1
      end
    end

    puts ""
    puts i
    i
  end

end