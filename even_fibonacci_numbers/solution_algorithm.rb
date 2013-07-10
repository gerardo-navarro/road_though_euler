# require "math"

class SolutionAlgorithm

  # 1st implementation - O(n)
  def SolutionAlgorithm.even_fibonacci_numbers_for(number)

    f_previous_previous = 1
    f_previous = 0
    f_current = f_previous_previous + f_previous

    sum = 0
    while f_current < number
      
      sum += f_current if f_current % 2 == 0

      f_previous_previous = f_previous
      f_previous = f_current
      f_current = f_previous_previous + f_previous

    end

    puts
    puts sum
    sum

  end

  # # 2nd implementation - O(n)
  # Phi is the Golden Ratio of the fibonacci numbers. The Golden Ratio is the average ratio between a fibonacci number and its predecessor. It is approximately 1.618... As we know that the fibonacci series produces an even number every three times, we have to calculate phi to the power of 3 to get the average distance between two even, consecutive numbers in the the fibonacci series. As it is not 100% precise, we have to round every time we apply phi
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

  # # 3rd implementation - O(n)
  # # It is easy to prove that every third Fibonacci number is even.
  # # F(n) = F(n-1) + F(n-2) = F(n-2) + F(n-3) + F(n-2) = 2*F(n-2) + F(n-3) = 2*(F(n-3) + F(n-4)) + F(n-3)) = 3*F(n-3) + 2*F(n-4) = 3*F(n-3) + F(n-4) + F(n-5) + F(n-6) = 4*F(n-3) + F(n-6)
  # def SolutionAlgorithm.even_fibonacci_numbers_for(number)

  #   f_previous_previous = 0
  #   f_previous = 2
  #   f_current = 4 * f_previous + f_previous_previous

  #   sum = 2
  #   while f_current < number
      
  #     sum += f_current

  #     f_previous_previous = f_previous
  #     f_previous = f_current
  #     f_current = 4 * f_previous + f_previous_previous

  #   end

  #   puts
  #   puts sum
  #   sum
  # end
 
end