require 'date'

class SolutionAlgorithm

  # 1st implementation - Provide complexity
  def SolutionAlgorithm.solve(start_date, end_date)
    
    if end_date < start_date
      raise "End_date cannot be before start_date"
    end

    current_first_of_month = start_date
    if current_first_of_month.day != 1
      current_first_of_month >> 1
      current_first_of_month.day = 1
    end

    sunday_count = 0

    while current_first_of_month < end_date
      sunday_count += 1 if current_first_of_month.wday == 0
      current_first_of_month = current_first_of_month >> 1
    end

    result = sunday_count

    puts ""
    puts result

    result
  end
 
end