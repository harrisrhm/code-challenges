# Write an algorithm to determine if a number n is happy.

# A happy number is a number defined by the following process:

# Starting with any positive integer, replace the number by the sum of the squares of its digits.
# Repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1.
# Those numbers for which this process ends in 1 are happy.
# Return true if n is a happy number, and false if not.

def is_happy(n)
  split_digit = n.to_s.split("").map { |integer| integer.to_i }
  arr = []
  until arr.sum == 1 do
    split_digit.each do |n|
      arr << n**2 
    end
  end
  p arr
end

is_happy(19)

# p arr.sum == 1 ? true : false