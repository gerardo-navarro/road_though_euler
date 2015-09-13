class SolutionAlgorithm

  def SolutionAlgorithm.solve_81(matrix)

    for i in (1...matrix.size)
      matrix[i][0] += matrix[i-1][0] 
    end

    for j in (1...matrix[0].size)
      matrix[0][j] += matrix[0][j-1]
    end

    for i in (1...matrix.size)
      for j in (1...matrix[0].size)
        matrix[i][j] += [matrix[i-1][j], matrix[i][j-1]].min
      end
    end

    result = matrix[-1][-1]
    puts ""
    puts result

    result
  end

  def SolutionAlgorithm.solve_82(matrix)

    opt_matrix = []
    for i in (0...matrix.size)
      opt_matrix << [matrix[i][0]]
    end

    for j in (1...matrix[0].size)
      for i in (0...matrix.size)
        opt_matrix[i] << opt_matrix[i][j-1] + matrix[i][j]
      end

      for i in (1...matrix.size)
        if opt_matrix[i-1][j] + matrix[i][j] < opt_matrix[i][j]
          opt_matrix[i][j] = opt_matrix[i-1][j] + matrix[i][j]
        end
      end

      (matrix.size-2).downto(0) do |i|
        if opt_matrix[i+1][j] + matrix[i][j] < opt_matrix[i][j]
          opt_matrix[i][j] = opt_matrix[i+1][j] + matrix[i][j]
        end
      end
    end

    min_path_sum = opt_matrix[0][-1]
    for i in (1...matrix.size)
      if opt_matrix[i][-1] < min_path_sum
        min_path_sum = opt_matrix[i][-1]
      end
    end

    result = min_path_sum
    puts ""
    puts result

    result
  end
  
  def SolutionAlgorithm.solve_83(matrix)

    # matrix_size = matrix.size * matrix[0].size
    min_path_sum = Float::INFINITY
    
    visited = Hash.new(false)
    shortest_distances = Hash.new(Float::INFINITY)
    comparison_proc = lambda { |matrix_cell_a, matrix_cell_b| shortest_distances[matrix_cell_a] <=> shortest_distances[matrix_cell_b] }
    
    source_matrix_cell = [0,0]

    prio_queue = Array.new
    # SolutionAlgorithm.prio_queue_push(source_matrix_cell, prio_queue) { |a, b| shortest_distances[a] <=> shortest_distances[b] }
    SolutionAlgorithm.prio_queue_push(source_matrix_cell, prio_queue,comparison_proc)
    visited[source_matrix_cell] = true
    shortest_distances[source_matrix_cell] = SolutionAlgorithm.value_in(matrix, source_matrix_cell)

    while not prio_queue.empty?

      # matrix_cell = SolutionAlgorithm.prio_queue_shift(prio_queue) { |a, b| shortest_distances[a] <=> shortest_distances[b] }
      matrix_cell = SolutionAlgorithm.prio_queue_shift(prio_queue, comparison_proc)
      visited[matrix_cell] = true

      matrix_cell_neighbors = []

      if matrix_cell[1] < matrix[0].size-1
        matrix_cell_neighbors << [matrix_cell[0], matrix_cell[1]+1] # right matrix_cell neighbor
      end

      if matrix_cell[1] > 0
        matrix_cell_neighbors << [matrix_cell[0], matrix_cell[1]-1] # left matrix_cell neighbor
      end

      if matrix_cell[0] < matrix.size-1
        matrix_cell_neighbors << [matrix_cell[0]+1, matrix_cell[1]] # down matrix_cell neighbor
      end

      if matrix_cell[0] > 0
        matrix_cell_neighbors << [matrix_cell[0]-1, matrix_cell[1]] # up matrix_cell neighbor
      end

      for matrix_cell_neighbor in matrix_cell_neighbors

        if not visited[matrix_cell_neighbor] and
          shortest_distances[matrix_cell_neighbor] > shortest_distances[matrix_cell] + SolutionAlgorithm.value_in(matrix, matrix_cell_neighbor)
          shortest_distances[matrix_cell_neighbor] = shortest_distances[matrix_cell] + SolutionAlgorithm.value_in(matrix, matrix_cell_neighbor)
          # SolutionAlgorithm.prio_queue_push(matrix_cell_neighbor, prio_queue) { |a, b| shortest_distances[a] <=> shortest_distances[b] }
          SolutionAlgorithm.prio_queue_push(matrix_cell_neighbor, prio_queue,comparison_proc)
        end
      end
    end

    result = shortest_distances[[matrix.size-1, matrix[0].size-1]]
    puts ""
    puts result

    result
  end


  def SolutionAlgorithm.solve_83_2(matrix)

    
    
  end








  def SolutionAlgorithm.prio_queue_push(element, prio_queue, comparison_proc)

    prio_queue << element
    SolutionAlgorithm.prio_queue_bubble_up(prio_queue, prio_queue.size-1, comparison_proc)

  end

  def SolutionAlgorithm.prio_queue_bubble_up(prio_queue, index, comparison_proc)
   
    if index == 0
      return
    end

    parent_index = (index-1)/2

    if comparison_proc.call(prio_queue[parent_index], prio_queue[index]) > 0
      prio_queue[parent_index], prio_queue[index] = prio_queue[index], prio_queue[parent_index]
      SolutionAlgorithm.prio_queue_bubble_up(prio_queue, parent_index, comparison_proc)
    end

  end

  def SolutionAlgorithm.prio_queue_shift(prio_queue, comparison_proc)

    result_prio_queue_element = prio_queue[0]

    prio_queue[0] = prio_queue[-1]
    prio_queue.delete_at(prio_queue.size-1)
    SolutionAlgorithm.prio_queue_bubble_down(prio_queue, 0, comparison_proc)

    return result_prio_queue_element
    
  end

  def SolutionAlgorithm.prio_queue_bubble_down(prio_queue, index, comparison_proc)

    if index >= prio_queue.size
      return
    end

    left_child_index = 2*index+1
    right_child_index = 2*index+2

    min_index = index
    if left_child_index < prio_queue.size and comparison_proc.call(prio_queue[left_child_index], prio_queue[min_index]) < 0
      min_index = left_child_index
    end

    if right_child_index < prio_queue.size and comparison_proc.call(prio_queue[right_child_index], prio_queue[min_index]) < 0
      min_index = right_child_index
    end

    if index != min_index
      prio_queue[index], prio_queue[min_index] = prio_queue[min_index], prio_queue[index]
      SolutionAlgorithm.prio_queue_bubble_down(prio_queue, min_index, comparison_proc)
    end
  end

  def SolutionAlgorithm.value_in(matrix, matrix_cell)
    return matrix[matrix_cell[0]][matrix_cell[1]]
  end

  def SolutionAlgorithm.set_value_in(matrix, matrix_cell, value)
    matrix[matrix_cell[0]][matrix_cell[1]] = value
  end

end