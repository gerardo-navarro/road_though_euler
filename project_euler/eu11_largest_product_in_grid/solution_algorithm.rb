class SolutionAlgorithm

  # 1st implementation - Provide complexity
  # def SolutionAlgorithm.largest_product_in_grid(grid = [])
    
  #   largest_product = 0

  #   matrix_x = grid[0].size
  #   matrix_y = grid.size

  #   # Checking horizontal direction
  #   for i in 0...matrix_y
  #     for j in 0...matrix_x-3
  #       product = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3]
  #       largest_product = product if product > largest_product
  #     end
  #   end

  #   # Checking vertical direction
  #   for j in 0...matrix_x
  #     for i in 0...matrix_y-3
  #       product = grid[i][j] * grid[i+1][j] * grid[i+2][j] * grid[i+3][j]
  #       largest_product = product if product > largest_product
  #     end
  #   end

  #   # Checking vertical (top left => bottom right) direction
  #   for i in 0...matrix_y-3
  #     for j in 0...matrix_x-3
  #       product = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3]
  #       largest_product = product if product > largest_product
  #     end
  #   end

  #   # Checking vertical (top right => bottom left) direction
  #   for i in 0...matrix_y-3
  #     (matrix_x-1).downto(3) do | j |
  #       product = grid[i][j] * grid[i+1][j-1] * grid[i+2][j-2] * grid[i+3][j-3]
  #       largest_product = product if product > largest_product
  #     end
  #   end

  #   puts ""
  #   puts largest_product
  #   puts iterations

  #   largest_product
  # end

  # 2nd implementation - Provide complexity
  def SolutionAlgorithm.largest_product_in_grid(grid = [])
    
    largest_product = 0

    matrix_x = grid[0].size
    matrix_y = grid.size

    for i in 0...matrix_y
      for j in 0...matrix_x

        # Checking horizontal direction
        product = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3] if j <= matrix_x - 4
        largest_product = product if product > largest_product
        
        # Checking vertical direction
        product = grid[i][j] * grid[i+1][j] * grid[i+2][j] * grid[i+3][j] if i <= matrix_y - 4
        largest_product = product if product > largest_product

        # Checking vertical (top left => bottom right) direction
        product = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3] if i <= matrix_y - 4 and j <= matrix_x - 4
        largest_product = product if product > largest_product

        # Checking vertical (top right => bottom left) direction
        product = grid[i][j] * grid[i+1][j-1] * grid[i+2][j-2] * grid[i+3][j-3] if i <= matrix_y - 4 and j >= 3
        largest_product = product if product > largest_product

      end
    end

    puts ""
    puts largest_product

    largest_product
  end

end