class SolutionAlgorithm

  # 1st implementation - Provide complexity
  def SolutionAlgorithm.solve(number)
    

    sequence_lengths = {0 => 0, 1 => 1}
    max_i_sequence = 1

    (number-1).downto(2) do |i|
      i_sequence_length = SolutionAlgorithm.collatz_sequence(i, sequence_lengths)


      if i_sequence_length > sequence_lengths[max_i_sequence]
        max_i_sequence = i
      end
    end

    result = max_i_sequence
    puts ""
    puts result

    result
  end

  def SolutionAlgorithm.collatz_sequence(i, sequence_lengths)
    
    if sequence_lengths[i]
      return sequence_lengths[i]
    end

    if (i%2) == 0
      next_i = i >> 1
    else
      next_i = 3*i + 1
    end
    sequence_lengths[i] = collatz_sequence(next_i, sequence_lengths) + 1
    return sequence_lengths[i]
  end

end