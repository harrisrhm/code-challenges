# Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

# Input: [0,1,0,3,12]
# Output: [1,3,12,0,0]

# Note:

# You must do this in-place without making a copy of the array.
# Minimize the total number of operations.

# def move_zeroes(nums)
#     arr_one = []
#     arr_two = []
#     arr_three = [arr_two, arr_one]
#     nums.each do |n|
#       if n == 0
#         arr_one << n
#       else
#         arr_two << n
#       end
#     end
#     arr_three.flatten
# end


def move_zeroes(nums)
  len = nums.length
  count=0
  for i in 0...len
      if a[i]!=0
          a[count]=a[i]
          count+=1
      end
  end
# # Loop from count to len-1 and fill it with zeros 
#   while count<len
#       a[count]=0
#       count+=1
#   end
#   return a
end


move_zeroes([0,1,0,3,12])