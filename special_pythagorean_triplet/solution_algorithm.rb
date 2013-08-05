require "mathn"

class SolutionAlgorithm

  # 1st implementation
  def SolutionAlgorithm.special_pythagorean_triplet_for(abc_sum)

  	0.upto(abc_sum / 3) do |a|

  		1.upto(abc_sum / 2) do |b|

  			2.upto(abc_sum) do |c|

  				if a < b and b < c
	  				if a + b + c == abc_sum
			  			if a**2 + b**2 == c**2
			  				
                abc_product = a * b * c
						    puts ""
						    puts abc_product.to_s
						  
						  	return abc_product
			  			end
			  		end		
  				end
  			end
  		end
  	end

    puts ""
    puts "Nothing found"
  
  	nil
  end
end