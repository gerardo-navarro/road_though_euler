require "mathn"

class SolutionAlgorithm

  # # 1st implementation
  # def SolutionAlgorithm.prime_on_position(position)

  #   primes_found = [2]
  #   prime_candidate = 3

  #   while primes_found.length < position
      
  #     prime_candidate_is_prime = true

  #     primes_found.each do |prime|
        
  #       if prime * prime > prime_candidate
  #         prime_candidate_is_prime = true
  #         break
  #       end
        
  #       if prime_candidate % prime == 0
  #         prime_candidate_is_prime = false
  #         break
  #       end
  #     end

  #     primes_found << prime_candidate if prime_candidate_is_prime
  #     prime_candidate += 2
  #   end

  #   puts ""
  #   puts primes_found[-1]
  #   primes_found[-1]

  # end

  # 2nd implementation
  def SolutionAlgorithm.prime_on_position(position)

    prime_candidate = (position * Math.ln(position)).to_i
    prime_candidate += 1 if prime_candidate % 2 == 0


    



    puts ""
    puts primes_found[-1]
    primes_found[-1]
  end

end