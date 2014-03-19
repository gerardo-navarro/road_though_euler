class SolutionAlgorithm

  # 1st implementation - Provide complexity
  def SolutionAlgorithm.solve(range)

    range ||= (1..1)

    result = range.inject(0) { |sum, i | sum + SolutionAlgorithm.name_count_for(i) }

    puts ""
    puts result

    result
  end

  def SolutionAlgorithm.name_count_for(number)

    # puts "#{number.to_s}"

    # digit_names =       ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    digit_letter_counts = [0, 3, 3, 5, 4, 4, 3, 5, 5, 4]
    # ten_row_names = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    ten_row_letter_counts = [3, 3, 3, 3, 4, 3, 4, 4, 3, 4]
    # ten_mulitple_names = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety" ]
    ten_mulitple_letter_counts = [0, 0, 6, 6, 5, 5, 5, 7, 6, 6]
    # ten_power_names= ["hundred", "thousand"]
    ten_power_letter_counts = [7, 8]

    number_letter_count = 0
    previous_number_digit = 0
    i = 0
    

    while number > 0
      # require "pry"; binding.pry

      number_digit = number % 10

      if i == 0
        number_letter_count += digit_letter_counts[number_digit]
      
      elsif i == 1
        if number_digit == 1
          number_letter_count += ten_row_letter_counts[previous_number_digit]
        else
          number_letter_count += ten_mulitple_letter_counts[number_digit]
        end
      
      else
        if number_digit > 0
          number_letter_count += digit_letter_counts[number_digit] + ten_power_letter_counts[i - 2] + ( previous_number_digit > 0 ? 3 : 0)
        end
      end

      number /= 10
      i += 1
      previous_number_digit += number_digit

    end
    return number_letter_count
  end
 
end