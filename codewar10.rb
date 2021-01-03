# Write a function done_or_not/DoneOrNot passing a board (list[list_lines]) as parameter. If the board is valid return 'Finished!', otherwise return 'Try again!'

# Sudoku rules:

# Complete the Sudoku puzzle so that each and every row, column, and region contains the numbers one through nine only once.

# Rows:


# There are 9 rows in a traditional Sudoku puzzle. Every row must contain the numbers 1, 2, 3, 4, 5, 6, 7, 8, and 9. There may not be any duplicate numbers in any row. In other words, there can not be any rows that are identical.

# In the illustration the numbers 5, 3, 1, and 2 are the "givens". They can not be changed. The remaining numbers in black are the numbers that you fill in to complete the row.

# Columns:


# There are 9 columns in a traditional Sudoku puzzle. Like the Sudoku rule for rows, every column must also contain the numbers 1, 2, 3, 4, 5, 6, 7, 8, and 9. Again, there may not be any duplicate numbers in any column. Each column will be unique as a result.

# In the illustration the numbers 7, 2, and 6 are the "givens". They can not be changed. You fill in the remaining numbers as shown in black to complete the column.

# Regions


# A region is a 3x3 box like the one shown to the left. There are 9 regions in a traditional Sudoku puzzle.

# Like the Sudoku requirements for rows and columns, every region must also contain the numbers 1, 2, 3, 4, 5, 6, 7, 8, and 9. Duplicate numbers are not permitted in any region. Each region will differ from the other regions.

# In the illustration the numbers 1, 2, and 8 are the "givens". They can not be changed. Fill in the remaining numbers as shown in black to complete the region.

# Valid board example:


# For those who don't know the game, here are some information about rules and how to play Sudoku: http://en.wikipedia.org/wiki/Sudoku and http://www.sudokuessentials.com/



# Working solution
# def done_or_not(board)
#   hash = board.flatten.each_with_object(Hash.new(0)) { |number, value| value[number] += 1 }
#   final = hash.values.all? { |value| value == 9 }
#   final == true ? 'Finished!' : 'Try again!'
# end

def done_or_not(board)
  regions = []
  board.each_slice(3) do |row_set|
    region_array = [[],[],[]]
    row_set.each do |row|
      row.each_slice(3).with_index do |s,i|
        region_array[i] = region_array[i] + s
      end
    end
    regions += region_array
  end
end

def region(done_or_not)
  regions.each do |region|
    three = region.each_with_object(Hash.new(0)) { |number, value| value[number] += 1 }
      three.delete(0) if three.has_key? 0
      p three.values.sum == 9 ? 'Finished!' : 'Try again!'
  end
end

  # p $variable
  # three.values
  # finalRegion.values.sum
  # if three.values.sum == 9
  #   p 'Finished!'
  # else
  #   p 'Try again!'
  # end
  # hash = board.flatten.each_with_object(Hash.new(0)) { |number, value| value[number] += 1 }
  # final = hash.values.all? { |value| value == 9 }
  # p final == true ? 'Finished!' : 'Try again!'

# done_or_not([[5, 3, 4, 6, 7, 8, 9, 1, 2], 
#                          [6, 7, 2, 1, 9, 5, 3, 4, 8],
#                          [1, 9, 8, 3, 4, 2, 5, 6, 7],
#                          [8, 5, 9, 7, 6, 1, 4, 2, 3],
#                          [4, 2, 6, 8, 5, 3, 7, 9, 1],
#                          [7, 1, 3, 9, 2, 4, 8, 5, 6],
#                          [9, 6, 1, 5, 3, 7, 2, 8, 4],
#                          [2, 8, 7, 4, 1, 9, 6, 3, 5],
#                          [3, 4, 5, 2, 8, 6, 1, 7, 9]])

done_or_not([[5, 3, 4, 6, 7, 8, 9, 1, 2], 
                         [6, 7, 2, 1, 9, 0, 3, 4, 9],
                         [1, 0, 0, 3, 4, 2, 5, 6, 0],
                         [8, 5, 9, 7, 6, 1, 0, 2, 0],
                         [4, 2, 6, 8, 5, 3, 7, 9, 1],
                         [7, 1, 3, 9, 2, 4, 8, 5, 6],
                         [9, 0, 1, 5, 3, 7, 2, 1, 4],
                         [2, 8, 7, 4, 1, 9, 6, 3, 5],
                         [3, 0, 0, 4, 8, 1, 1, 7, 9]])


# done_or_not([[5, 3, 4, 6, 7, 8, 9, 1, 2], 
# [6, 7, 2, 1, 9, 0, 3, 4, 9]])

# done_or_not([[5, 3, 4, 6, 7, 8, 9, 1, 2], [6, 7, 2, 1, 9, 0, 3, 4, 9], [1, 0, 0, 3, 4, 2, 5, 6, 0], [8, 5, 9, 7, 6, 1, 0, 2, 0]])

# board = [[5, 3, 4, 6, 7, 8, 9, 1, 2], 
#                          [6, 7, 2, 1, 9, 0, 3, 3, 4, 9],
#                          [1, 0, 0, 3, 4, 2, 5, 6, 0],
#                          [8, 5, 9, 7, 6, 1, 0, 2, 0],
#                          [4, 2, 6, 8, 5, 3, 7, 9, 1],
#                          [7, 1, 3, 9, 2, 4, 8, 5, 6],
#                          [9, 0, 1, 5, 3, 7, 2, 1, 4],
#                          [2, 8, 7, 4, 1, 9, 6, 3, 5],
#                          [3, 0, 0, 4, 8, 1, 1, 7, 9]]
