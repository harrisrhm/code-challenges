# def comp(array1, array2)
#   array1.map { |num| Math.sqrt(2) }
#   puts array1
#   array2 == Math.sqrt(array1) ? true : false 
# end

def comp(array1)
  sum = 0
  array1.each do |num|
    sum = num ** 2
  end
  puts sum
end

comp([121, 144, 19, 161, 19, 144, 19, 11])