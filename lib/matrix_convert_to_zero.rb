# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
require 'pry'

def matrix_convert_to_0(matrix)

  if matrix == []
    return matrix
  end

  outer_row_flag = false
  outer_column_flag = false

  row = 0
  col = 0

  while matrix[row] != nil

    if matrix[row][0] == 0
      outer_column_flag = true
      break
    end
    row += 1
  end

  while matrix[0][col] != nil
    if matrix[0][col] == 0
      outer_row_flag = true
      break
    end
    col += 1
  end
  # puts "init #{matrix}"

  row = 1
  col = 1

  while matrix[row] != nil
    col = 1
    while matrix[row][col] != nil

      # puts "#{matrix[row][col]} == 0?"
      if matrix[row][col] == 0
        # puts "before:  #{matrix}"
        matrix[row][0] = 0
        matrix[0][col] = 0
        # puts "updating outer row and col \n #{matrix}"
      end
      col += 1
    end
    row += 1
  end

  # puts "row change #{matrix}\n"

  row = 0
  while matrix[row] != nil
    if matrix[row][0] == 0
      col = 1
      while matrix[row][col] != nil
        matrix[row][col] = 0
        col += 1
      end
    end
    row += 1
  end
  #
  # puts "column change #{matrix}\n"

  col = 1
  while matrix[0][col] != nil
    if matrix[0][col] == 0
      row = 1
      while matrix[row] != nil
        matrix[row][col] = 0
        row += 1
      end
    end
    col += 1
  end

  # col = 0
  # if outer_row_flag == true
  #   while matrix[0][col] != nil
  #     matrix[0][col] = 0
  #     col += 1
  #   end
  # end


  # row = 0
  # if outer_column_flag == true
  #   while matrix[row] != nil
  #     matrix[row][0] = 0
  #     row +=1
  #   end
  # end

  #This on doesn't work, need to fix later by storing column and row indicators
  # matrix.each do |row|
  #
  #   # i = 0
  #   #
  #   # while i < row.length
  #   #   j = 0
  #   #
  #   #   if row[i] == 0
  #   #     while j < row.length
  #   #       row[j] = 0
  #   #       j += 1
  #   #     end
  #   #   end
  #   #
  #   #   i += 1
  #   # end
  #
  #   row.each_with_index do |column, index|
  #
  #     if column == 0
  #       j = 0
  #       while j < row.length
  #         row[j] = 0
  #         j += 1
  #       end
  #     end
  #   end
  #
  # end
  # return matrix

end
