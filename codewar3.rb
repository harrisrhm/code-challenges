# Are they the "same"?

# Given two arrays a and b write a function comp(a, b) (compSame(a, b) in Clojure) that checks whether the two arrays have the "same" elements, with the same multiplicities. "Same" means, here, that the elements in b are the elements in a squared, regardless of the order.

# def comp(array1, array2)
#   return false if array1.nil? || array2.nil?
#   arr = []
#   array1.each { |num| arr << num ** 2 }
#   p arr.sort == array2.sort
# end

# Refactored
def comp(array1, array2)
  array1.nil? || array2.nil? ? false : array1.sort.map { |num| num ** 2 } == array2.sort
end

comp([121, 144, 19, 161, 19, 144, 19, 11], [121, 14641, 20736, 361, 25921, 361, 20736, 361])