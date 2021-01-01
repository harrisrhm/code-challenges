# Write a function called sumIntervals/sum_intervals() that accepts an array of intervals, and returns the sum of all the interval lengths. Overlapping intervals should only be counted once.

# Intervals
# Intervals are represented by a pair of integers in the form of an array. The first value of the interval will always be less than the second value. Interval example: [1, 5] is an interval from 1 to 5. The length of this interval is 4.

# Working solution
def sum_of_intervals(intervals)
  range = []
  intervals.each do |interval|
    range << (interval[0]...interval[-1]).to_a
  end
  p range.flatten.uniq.size
end

# Refactored code
# def sum_of_intervals(intervals)
#   p intervals.map{ |a| (a[0]...a[1]).to_a }.flatten.uniq.size
# end

# sum_of_intervals([[1, 5], [6, 10]])
# sum_of_intervals([[1, 5]])
# sum_of_intervals([[1,5], [10, 20], [1, 6], [16, 19], [5, 11]])
# sum_of_intervals([[1, 5], [1, 5]])
# sum_of_intervals([[1, 4], [7, 10], [3, 5]])