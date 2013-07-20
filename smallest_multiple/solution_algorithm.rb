require "mathn"

class SolutionAlgorithm

  # # 1st implementation
  # def SolutionAlgorithm.smallest_multiple_for_numbers_until(range)
    
  #   smallest_multiple = range
  #   while true
  #     break if ((1..range).inject(true){ |divided_by_all , divisor| divided_by_all and (smallest_multiple % divisor == 0)})
  #     smallest_multiple += 1
  #   end

  #   puts ""
  #   puts smallest_multiple.to_s
  
  #   smallest_multiple
  # end

  # 2nd implementation
  def SolutionAlgorithm.smallest_multiple_for_numbers_until(range)

    primes = {}
    2.upto(range) do |number_in_range|
      
      number_in_range_is_prime = true
      primes.keys.each do |prime|
     
        i = 0
        while number_in_range % prime == 0
          number_in_range_is_prime = false
          number_in_range /= prime
          i += 1
        end

        primes[prime] = i if primes[prime] < i
      end

      primes[number_in_range] = 1 if number_in_range_is_prime
    end

    smallest_multiple = primes.inject(1) do |smallest_multiple, (prime, max_power)|
      smallest_multiple * prime**max_power
    end

    puts ""
    puts smallest_multiple.to_s
  
    smallest_multiple

  end

end