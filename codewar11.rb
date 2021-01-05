# Sum of Pairs
# Given a list of integers and a single sum value, return the first two values (parse from the left please) in order of appearance that add up to form the sum.


# 1 
# def sum_pairs(ints, n)
#   arr = []
#   arr2 = []
#   count = 0
#   while count < ints.length
#     ints.each_with_index do |e, i|
#       first = arr << ints[0] + ints[i]
#         first.each do |e|
#           if e == n
#             arr2 << e
#           end
#         end
#     end
#   end
#   p arr2
# end

# 2
# def sum_pairs(ints, s)
#   (1...ints.size).each do |x|
#     (0...x).each do |y|
#       [ints[y], ints[x]] if ints[x] + ints[y] == s
#     end
#   end
#   nil
# end

# 3
# require 'set'

# def sum_pairs(ints, s)
#   counted = Set.new
#   ints.each do |int|
#     return [s - int, int] if counted.include?(s - int)
#     counted.add(int)
#   end
#   nil
# end

# 4
# def sum_pairs(ints, sum)
#   checked_nums = []
#   ints.each do |int|
#     if checked_nums.include?(int) && int == (sum - int)
#       return [int, int]
#     elsif checked_nums.include?(int)
#       next
#     elsif checked_nums.include?(sum - int)
#       return [(sum - int), int]
#     else
#       checked_nums << int
#     end
#   end
  
#   nil
# end

# 4
# def sum_pairs(ints, s)
#   seen = {}
#   for i in ints do
#     return [s-i, i] if seen[s-i]
#     seen[i] = true
#   end
#   nil
# end


sum_pairs([11, 3, 7, 5], 10)

# sum([11, 3, 7, 5])