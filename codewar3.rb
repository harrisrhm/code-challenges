# def comp(array1, array2)
#   array1.map { |num| Math.sqrt(2) }
#   puts array1
#   array2 == Math.sqrt(array1) ? true : false 
# end

def comp(array1, array2)
  arr = []
  array1.each { |num| arr << num ** 2 }
  p arr.include?(array2)
end

comp([121, 144, 19, 161, 19, 144, 19, 11], [121, 14641, 20736, 361, 25921, 361, 20736, 361])