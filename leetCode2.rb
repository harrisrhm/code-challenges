# Write an algorithm to determine if a number n is happy.

# A happy number is a number defined by the following process:

# Starting with any positive integer, replace the number by the sum of the squares of its digits.
# Repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1.
# Those numbers for which this process ends in 1 are happy.
# Return true if n is a happy number, and false if not.

# def is_happy(n)
#   split_digit = n.to_s.split("").map { |integer| integer.to_i }
#   arr = []
#     split_digit.each do |n|
#       arr << n**2 
#     end
#   new_arr = arr.sum
#   new_sum = []
#   until new_arr == 1
#     bow = new_arr.to_s.split("").map { |integer| integer.to_i }
#     bow.each do |b|
#       new_sum << b**2
#       if new_sum.sum == 1
#         break
#       end
#     end
#   end
#   p new_sum
# end


# def is_happy(n)
#   split_digit = n.to_s.split("").map { |integer| integer.to_i }
#   arr = []
#     split_digit.each do |n|
#       arr << n**2 
#     end
#   if arr.sum == 1
#     p true
#   else
#     loop do
#       new_arr = []
#       arr.sum.to_s.split("").map { |integer| integer.to_i }.each { |n| new_arr << n **2 }
#         if new_arr.sum == 1
#           break
#         end
#     end
#   elsif
#     arr.sum != 1
#     p false
#   end
# end

# require 'pry'

def is_happy(n)
  def add_split(num)
      arr = num.to_s.split("")
      arr.map do |str|
          str.to_i ** 2
      end.sum
  end
  i = add_split(n)
  until i == 1 || i == 16
      i = add_split(i)
  end
  p i == 1 ? true : false
end

is_happy(20)