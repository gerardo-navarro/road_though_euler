class SolutionAlgorithm

  def SolutionAlgorithm.solve(upper_resilience_ratio_limit)

    sieve = Array.new(1000, true)
    primes = Array.new

    sieve[0] = false
    sieve[1] = false

    i = 2
    while i < sieve.size
      primes << i
      (2*i).step(sieve.size,i) do |j|
        sieve[j] = false
      end
      i += 1
      while i < sieve.size and not sieve[i]
        i += 1
      end
    end

    d, s = 1, 1
    for p in primes
      d *= p
      s *= p-1
      for i in (2..p)
        if s*i / (d*i-1.0) < upper_resilience_ratio_limit
          result = d*i
          puts ""
          puts result

          return result
        end
      end
    end
  end
end