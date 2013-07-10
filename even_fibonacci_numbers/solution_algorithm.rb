# require "math"

class SolutionAlgorithm

  # 1st implementation - O(n)
  # def SolutionAlgorithm.even_fibonacci_numbers_for(number)

  #   f_previous_previous = 1
  #   f_previous = 0
  #   f_current = f_previous_previous + f_previous

  #   sum = 0
  #   while f_current < number
      
  #     sum += f_current if f_current % 2 == 0

  #     f_previous_previous = f_previous
  #     f_previous = f_current
  #     f_current = f_previous_previous + f_previous

  #   end

  #   puts
  #   puts sum
  #   sum

  # end

  # # 2nd implementation - O(n)
  # def SolutionAlgorithm.even_fibonacci_numbers_for(number)

  #   phi = (1 + Math.sqrt(5)) / 2
  #   phi = phi * phi * phi

  #   f_current = 2
  #   sum = 0
  #   while f_current < number
  #     sum += f_current
  #     f_current *= phi
  #     f_current = f_current.round
  #   end

  #   puts
  #   puts sum
  #   sum
  # end

  # 3rd implementation - O(n)
  def SolutionAlgorithm.even_fibonacci_numbers_for(number)

    f_previous_previous = 0
    f_previous = 2
    f_current = 4 * f_previous + f_previous_previous

    sum = 2
    while f_current < number
      
      sum += f_current

      f_previous_previous = f_previous
      f_previous = f_current
      f_current = 4 * f_previous + f_previous_previous

    end

    puts
    puts sum
    sum
  end
 
end