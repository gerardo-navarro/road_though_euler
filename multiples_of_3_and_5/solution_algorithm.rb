class SolutionAlgorithm

  def SolutionAlgorithm.muliples_of_3_and_5_for(number)
    
    sum = 0
    number.times do |i|
      if (i % 3 == 0) or (i % 5 == 0)
        sum += i
      end
    end
    sum
  end
 
end