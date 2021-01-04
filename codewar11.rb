# Sum of Pairs
# Given a list of integers and a single sum value, return the first two values (parse from the left please) in order of appearance that add up to form the sum.

# def sum_pairs(ints)
#   ints.each do 
#     p ints[0] + 
#   end
# end

def sum_pairs(ints, n)
  arr = []
  arr2 = []
  while x = n
    ints.each_with_index do |e, i|
      first = arr << ints[0] + ints[i]
        first.each do |e|
          if e == n
            arr2 << e
          end
        end
    end
  end
  p arr2
end

# def sum_pairs(ints)
#   p ints.each 
# end

sum_pairs([11, 3, 7, 5], 10)