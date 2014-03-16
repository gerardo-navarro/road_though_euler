class SolutionAlgorithm

  # 1st implementation - Provide complexity
  # def SolutionAlgorithm.sum_of_primes_below(number_limit)
    
  #   found_primes = []
  #   sum = 0

  #   if number_limit > 2
  #     found_primes = [2]
  #     sum = 2
  #   end

  #   3.step(number_limit - 1, 2) do | number |

  #     number_is_prime = true
  #     found_primes.each do | prime |
  #       break if (prime * prime > number)
  #       number_is_prime = false if (number % prime == 0)
  #     end
      
  #     if number_is_prime
  #       found_primes << number
  #       sum += number
  #     end
      
  #   end

  #   puts ""
  #   puts sum

  #   return sum
    
  # end
  
  # 2nd implementation using the sieve of Eratosthenes
  # def SolutionAlgorithm.sum_of_primes_below(number_limit)
    
  #   # Handling corner cases
  #   number_limit = 0 if number_limit < 0

  #   found_primes = []
  #   sum = 0

  #   sieve = Array.new(number_limit, true)
    
  #   sieve[0] = false
  #   sieve[1] = false

  #   (2...number_limit).each do | i | 

  #     # Skip the number until we get the next positive number in sieve
  #     next unless sieve[i]

  #     new_prime = i
  #     found_primes << new_prime
  #     sum += new_prime

  #     # Cross out multiples of new_prime
  #     (2*i).step(number_limit - 1, i) do | prime_multiple |
  #       sieve[prime_multiple] = false
  #     end
  #   end

  #   puts ""
  #   puts sum

  #   return sum
  # end

  # 3rd implementation optimising former implementation of sieve of Erastosthenes
  def SolutionAlgorithm.sum_of_primes_below(number_limit)

    # Handling corner cases
    return 0 if number_limit <= 1

    found_primes = []
    sum = 0

    if number_limit > 2
      found_primes << 2
      sum += 2
    end

    sieve_size = (number_limit / 2) - 1 
    sieve_limit = ((Math.sqrt(number_limit) - 1) / 2).to_i
    sieve = Array.new(sieve_size, true)

    0.step(sieve_limit).each do | i |

      # Skip the number until we get the next positive number in sieve
      next unless sieve[i]

      new_prime = 2*i + 3
      found_primes << new_prime
      sum += new_prime

      # Cross out multiples of new_prime
      ((new_prime**2 - 3) / 2).step(sieve_size - 1, new_prime) do | prime_multiple |
        sieve[prime_multiple] = false
      end
    end

    (sieve_limit + 1).upto(sieve_size - 1) do | i |
      if sieve[i]
        new_prime = 2*i + 3
        found_primes << new_prime
        sum += new_prime
      end 
    end


    puts ""
    puts sum
    # puts found_primes.to_s

    return sum

  end

  # def SolutionAlgorithm.sum_of_primes_below(n)
  #   # For odd i, if i is prime, nums[i >> 1] is true.
  #   # Set false for all multiples of 3.
  #   nums = [true, false, true] * ((n + 5) / 6)
  #   nums[0] = false  # 1 is not prime.
  #   nums[1] = true   # 3 is prime.
   
  #   # Outer loop and both inner loops are skipping multiples of 2 and 3.
  #   # Outer loop checks i * i > n, same as i > Math.sqrt(n).
  #   i = 5
  #   until (m = i * i) > n
  #     if nums[i >> 1]
  #       i_times_2 = i << 1
  #       i_times_4 = i << 2
  #       while m <= n
  #         nums[m >> 1] = false
  #         m += i_times_2
  #         nums[m >> 1] = false
  #         m += i_times_4  # When i = 5, skip 45, 75, 105, ...
  #       end
  #     end
  #     i += 2
  #     if nums[i >> 1]
  #       m = i * i
  #       i_times_2 = i << 1
  #       i_times_4 = i << 2
  #       while m <= n
  #         nums[m >> 1] = false
  #         m += i_times_4  # When i = 7, skip 63, 105, 147, ...
  #         nums[m >> 1] = false
  #         m += i_times_2
  #       end
  #     end
  #     i += 4
  #   end
   
  #   primes = [2]
  #   nums.each_index {|i| primes << (i * 2 + 1) if nums[i]}
  #   primes.pop while primes.last > n
  #   primes
  # end

end