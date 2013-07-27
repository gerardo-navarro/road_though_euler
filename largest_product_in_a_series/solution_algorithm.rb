class SolutionAlgorithm

  # 1st implementation
  def SolutionAlgorithm.largest_product_in_a_series_of(number)
    
  largest_product = 0

    number_str = number.to_s
    0.upto(number_str.length - 5) do |index|
      
      # puts number_str[index] + number_str[index + 1] + number_str[index + 2] + number_str[index + 3] + number_str[index + 4]
      product_from_series = number_str[index].to_i * number_str[index + 1].to_i * number_str[index + 2].to_i * number_str[index + 3].to_i * number_str[index + 4].to_i
      largest_product = product_from_series if product_from_series > largest_product
        
    end

    puts ""
    puts largest_product.to_s
  
    largest_product
  end

end