class SolutionAlgorithm

  # 1st implementation
  # def SolutionAlgorithm.muliples_of_3_and_5_for(number)
    
  #   sum = 0
  #   number.times do |i|
  #     if (i % 3 == 0) or (i % 5 == 0)
  #       sum += i
  #     end
  #   end

  #   sum
  # end

  # 2nd implementation
  def SolutionAlgorithm.muliples_of_3_and_5_for(number)
    
    amount_of_numbers_divided_by_3 = (number - 1) / 3 
    amount_of_numbers_divided_by_5 = (number - 1) / 5

    sum = 0
    1.upto(amount_of_numbers_divided_by_3) do |i|
      sum += 3 * i unless i % 5 == 0
      sum += 5 * i if i <= amount_of_numbers_divided_by_5
    end

    sum
  end
 
end