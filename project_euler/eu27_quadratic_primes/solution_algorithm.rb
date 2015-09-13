class SolutionAlgorithm

  # 1st implementation - Provide complexity
  def SolutionAlgorithm.solve
    
    primes = []
    prime_sieve = Array.new(1000, true)
    prime_sieve[0] = false
    prime_sieve[1] = false
    i = 2
    while i < prime_sieve.size

      primes << i
      (2*i).step(999, i) { |i| prime_sieve[i] = false}
      i += 1
      while i < prime_sieve.size and not prime_sieve[i]
        i += 1
      end
    end
    
    # puts "#{primes}"



    # n² + an + b, where |a| < 1000 and |b| < 1000

    max_prime_count = -Float::INFINITY
    max_prime_count_coefficient_product = nil

    primes.each do |coefficient_b|
      for coefficient_a in (-coefficient_b...1000)
      # for coefficient_b in (0...1000)
        
        prime_count = SolutionAlgorithm.max_prime_count_for_quadratic_expression(coefficient_a, coefficient_b)
        if prime_count > max_prime_count
          max_prime_count = prime_count
          max_prime_count_coefficient_product = coefficient_a * coefficient_b
        end

        prime_count = SolutionAlgorithm.max_prime_count_for_quadratic_expression(-coefficient_a, coefficient_b)
        if prime_count > max_prime_count
          max_prime_count = prime_count
          max_prime_count_coefficient_product = -coefficient_a * coefficient_b
        end

        prime_count = SolutionAlgorithm.max_prime_count_for_quadratic_expression(coefficient_a, -coefficient_b)
        if prime_count > max_prime_count
          max_prime_count = prime_count
          max_prime_count_coefficient_product = coefficient_a * -coefficient_b
        end

        prime_count = SolutionAlgorithm.max_prime_count_for_quadratic_expression(-coefficient_a, -coefficient_b)
        if prime_count > max_prime_count
          max_prime_count = prime_count
          max_prime_count_coefficient_product = -coefficient_a * -coefficient_b
        end
      end
    end
    
    result = max_prime_count_coefficient_product
    puts ""
    puts "#{result} <=> #{max_prime_count}"

    result
  end

  def SolutionAlgorithm.max_prime_count_for_quadratic_expression(coefficient_a, coefficient_b)

    n = -1

    begin
      n += 1
      current_quadratic_expression_value = n*n + coefficient_a*n + coefficient_b
    end while SolutionAlgorithm.prime?(current_quadratic_expression_value)

    return n
  end


  def SolutionAlgorithm.prime?(number)
    
    if number < 2
      return false
    elsif number == 2
      return true
    elsif number % 2 == 0
      return false
    end

    i = 3
    while i*i < number
      if number % i == 0
        return false
      end 
      i += 2
    end

    return true
  end

end








