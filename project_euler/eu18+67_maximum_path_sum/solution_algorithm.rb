class SolutionAlgorithm

  # 1st implementation - Provide complexity
  # def SolutionAlgorithm.solve(triangle_arr)
    
  #   max_path_memoization_arr = Array.new(triangle_arr.size, nil)
  #   result = SolutionAlgorithm.max_path_size_in(triangle_arr, max_path_memoization_arr, 0, 1)

  #   puts ""
  #   puts result

  #   result
  # end

  # def SolutionAlgorithm.max_path_size_in(triangle_arr, current_position, current_level)
  #   puts "#{current_position} #{current_level} #{triangle_arr.size}"
  #   if current_position + current_level >= triangle_arr.size
  #     return triangle_arr[current_position]
  #   end

  #   left_path_size = SolutionAlgorithm.max_path_size_in(triangle_arr, current_position + current_level, current_level + 1)
  #   right_path_size = SolutionAlgorithm.max_path_size_in(triangle_arr, current_position + current_level + 1, current_level + 1)

  #   return triangle_arr[current_position] + (left_path_size > right_path_size ? left_path_size : right_path_size)
  # end

  # def SolutionAlgorithm.max_path_size_in(triangle_arr, max_path_memoization_arr, current_position, current_level)

  #   if max_path_memoization_arr[current_position]
  #     return max_path_memoization_arr[current_position]
  #   end

  #   if current_position + current_level >= triangle_arr.size
  #     return triangle_arr[current_position]
  #   end

  #   left_path_size = SolutionAlgorithm.max_path_size_in(triangle_arr, max_path_memoization_arr, current_position + current_level, current_level + 1)
  #   right_path_size = SolutionAlgorithm.max_path_size_in(triangle_arr, max_path_memoization_arr, current_position + current_level + 1, current_level + 1)

  #   max_path_memoization_arr[current_position] = triangle_arr[current_position] + (left_path_size > right_path_size ? left_path_size : right_path_size)
  #   return max_path_memoization_arr[current_position]
  # end

  def SolutionAlgorithm.solve(triangle_arr)

    level_count = (Math.sqrt(2.0 * triangle_arr.size + 0.25) - 0.5).to_i
    level_end_i = triangle_arr.size - level_count

    (triangle_arr.size - level_count - 1).downto(0) do |i|

      if i < level_end_i
        level_count -= 1
        level_end_i -= level_count
      end
      # require "pry"; binding.pry


      max_i = i + (level_count+1)
      max_i -= 1 if triangle_arr[max_i-1] > triangle_arr[max_i]
      triangle_arr[i] = triangle_arr[i] + triangle_arr[max_i]
      # puts "#{triangle_arr.to_s}"

    end
    return triangle_arr[0]
  end

end