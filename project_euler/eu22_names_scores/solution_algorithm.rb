class SolutionAlgorithm

  # 1st implementation - Provide complexity
  def SolutionAlgorithm.solve(names)
    letter_map = Hash.new
    alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    alphabet.size.times { |char_index| letter_map[alphabet[char_index]] = char_index+1 }
    
    names.sort!

    total_name_scores = 0
    names.each_with_index do |name, name_index|
      name_score = name.chars.inject(0) { |name_score, letter| name_score + letter_map[letter]}
      total_name_scores += name_score * (name_index+1)
    end

    result = total_name_scores
    puts ""
    puts result

    result
  end

end