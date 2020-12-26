# Take a Number And Sum Its Digits Raised To The Consecutive Powers And ....¡Eureka!!

# The number 89 is the first integer with more than one digit that fulfills the property partially introduced in the title of this kata. What's the use of saying "Eureka"? Because this sum gives the same number.

# In effect: 89 = 8^1 + 9^2

# The next number in having this property is 135.

# See this property again: 135 = 1^1 + 3^2 + 5^3

# We need a function to collect these numbers, that may receive two integers a, b that defines the range [a, b] (inclusive) and outputs a list of the sorted numbers in the range that fulfills the property described above.

# Let's see some cases:

# sum_dig_pow(1, 10) == [1, 2, 3, 4, 5, 6, 7, 8, 9]

# sum_dig_pow(1, 100) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 89]

# If there are no numbers of this kind in the range [a, b] the function should output an empty list.

# sum_dig_pow(90, 100) == []


# First attempt for single digit
# def sum_dig_pow(a)
#   # your code here
#   arr = a.to_s.chars.map { |n| n.to_i }
#   tab1 = []
#   tab = []
#   sum = 0
#   arr
#   arr.each do |n|
#     tab << total = n ** sum += 1
#   end
#   tab1 << tab.inject { |total, m| total + m }
# end

# Working solution

def sum_dig_pow(a, b)
  tab = []
  (a..b).each do |x|
    n = 0
    z = x.to_s.split('').inject(0) do |sum, y|
      n += 1
      sum + y.to_i ** n
    end
    tab << x if z == x
  end
  tab
end

# Refactored

# def sum_dig_pow(a, b)
#   (a..b).select {|n| n.to_s.chars.map.with_index{|n, i| n.to_i**(i+1)}.reduce(:+) == n} 
# end

