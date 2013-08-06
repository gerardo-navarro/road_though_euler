require "mathn"

class SolutionAlgorithm

  # # 1st implementation
  # def SolutionAlgorithm.special_pythagorean_triplet_for(abc_sum)

  #   0.upto(abc_sum / 3) do |a|

  #     1.upto(abc_sum / 2) do |b|

  #       2.upto(abc_sum) do |c|

  #         if a < b and b < c
  #           if a + b + c == abc_sum
  #             if a**2 + b**2 == c**2
                
  #               abc_product = a * b * c
  #               puts ""
  #               puts abc_product.to_s
              
  #               return abc_product
  #             end
  #           end   
  #         end
  #       end
  #     end
  #   end

  #   puts ""
  #   puts "Nothing found"
  
  #   nil
  # end

  # # 2nd implementation
  # def SolutionAlgorithm.special_pythagorean_triplet_for(abc_sum)
    
  #   3.upto(abc_sum / 3 - 1) do |a|
  #     (a + 1).upto((abc_sum - a) / 2) do |b|

  #       c = abc_sum - a - b
  #       if a**2 + b**2 == c**2
  #         abc_product = a * b * c
  #         puts ""
  #         puts abc_product.to_s
        
  #         return abc_product
  #       end
  #     end
  #   end

  #   puts ""
  #   puts "Nothing found"
  
  #   nil

  # end 

  # 3rd implementation
  def SolutionAlgorithm.special_pythagorean_triplet_for(abc_sum)
    
    s2 = abc_sum / 2
    mlimit = Math.sqrt(s2).to_i - 1
    2.upto(mlimit) do |m|
      
      if s2 % m == 0

        sm = s2 % m
        sm /= 2 while sm % 2 == 0

        k = (m % 2 == 1 ? m + 2 : m + 1)

        while k < 2 * m and k <= sm

          if sm % k = 0 and k.gcd(m) == 1
            d = s2 / (k * m)
            n = k - m
            a = d * (m * m - n * n)
            b = 2 * d * m * n
            c = d * (m * m + n * n)
            
            abc_product = a * b * c
            puts ""
            puts abc_product.to_s
          
            return abc_product
          end

          k += 2
        end
      end
    end
  end
end