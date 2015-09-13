class SolutionAlgorithm

  # 1st implementation - Provide complexity
  def SolutionAlgorithm.solve
    
    curious_numbers_sum = 0
    digit_factorial = {
      0 => 1,     1 => 1,
      2 => 2,     3 => 6,
      4 => 24,    5 => 120,
      6 => 720,   7 => 5040,
      8 => 40320, 9 => 362880
    }

    for i in (3..10**7)

      i_digit_factorial_sum = i.to_s.chars.inject(0) do |sum, char|
        # puts "hasld #{sum} asda #{i}"
        break if sum > i
        sum + digit_factorial[char.to_i]
      end
      if i_digit_factorial_sum == i
        puts "#{i_digit_factorial_sum}"
        curious_numbers_sum += i_digit_factorial_sum
      end

    end

    result = curious_numbers_sum
    puts ""
    puts result

    result
  end

end