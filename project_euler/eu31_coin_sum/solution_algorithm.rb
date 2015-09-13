class SolutionAlgorithm

  # 1st implementation - Provide complexity
  # def SolutionAlgorithm.solve(number)

  #   return 0 if number.nil? or number <= 0

  #   # Coin values in cent
  #   coins = [200, 100, 50, 20, 10, 5, 2, 1]

  #   total_coin_combinations = SolutionAlgorithm.calc_coin_combinations_for(number, coins)

  #   puts ""
  #   puts total_coin_combinations.size

  #   return total_coin_combinations.size
  # end

  # def SolutionAlgorithm.calc_coin_combinations_for(number, coins)
    
  #   coins.delete_if { | coin_value | coin_value > number }

  #   return [] if coins.empty?

  #   total_coin_combinations = []
  #   coins.each_with_index do | coin, coin_index |
  #     total_coin_sub_combinations = SolutionAlgorithm.calc_coin_combinations_for(number - coin, coins[coin_index...coins.size])
  #     if total_coin_sub_combinations.empty?
  #       total_coin_combinations << [coin]
  #     else
  #       total_coin_combinations += total_coin_sub_combinations.inject([]) do | total_coin_combinations, coin_combination |
  #         total_coin_combinations << ([coin] + coin_combination) 
  #       end
  #     end
  #   end

  #   return total_coin_combinations
  # end

  

  # 2nd implementation - Provide complexity
  def SolutionAlgorithm.solve(number)

    # Handling some edge cases
    return 0 if number.nil? or number <= 0

    
    total_coin_combinations = SolutionAlgorithm.calc_coin_combinations_for(memoization_map = Hash.new(0), number)

    puts ""
    puts total_coin_combinations

    return total_coin_combinations
  end

  def SolutionAlgorithm.calc_coin_combinations_for(memoization_map, number, coins = [200, 100, 50, 20, 10, 5, 2, 1] , coin_index = 0)

    cantor_pair_number = cantor_pair(number, coin_index)
    return memoization_map[cantor_pair_number] if memoization_map.include?(cantor_pair_number)

    (coin_index...coins.size).each do | i |
      
      next if coins[i] > number

      if number - coins[i] == 0
        memoization_map[cantor_pair_number] += 1
      else 
        memoization_map[cantor_pair_number] += SolutionAlgorithm.calc_coin_combinations_for(number - coins[i], coins, i, memoization_map)
      end
    end

    return memoization_map
  end


  # This algorithm has a better memory efficiency while being as fast as the previous algorith - but it is not mine
  def SolutionAlgorithm.solve(number)
    return 0 if number.nil? or number <= 0

    coins = [1, 2, 5, 10, 20, 50, 100, 200]
    ways = Array.new(number + 1, 0);
    ways[0] = 1;

    coins.each do | coin |
      (coin..number).each do | j |
        ways[j] += ways[j - coin];
      end
    end

    puts ""
    puts ways[number]

    return ways[number]
  end
  
  def SolutionAlgorithm.cantor_pair(a, b)
    return (a + b) * (a + b + 1) / 2 + a
  end

end