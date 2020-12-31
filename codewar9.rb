# Write a function called sumIntervals/sum_intervals() that accepts an array of intervals, and returns the sum of all the interval lengths. Overlapping intervals should only be counted once.

# Intervals
# Intervals are represented by a pair of integers in the form of an array. The first value of the interval will always be less than the second value. Interval example: [1, 5] is an interval from 1 to 5. The length of this interval is 4.


# def sum_of_intervals(intervals)
#   # p (intervals[0]..-1).to_a
#   # intervals.map { |a| Range.new(*a) } 
#   p arr = (intervals[0][0] - intervals[0][1]).abs
#   p arr1 = (intervals[1][0] - intervals[1][1]).abs
#   p arr + arr1
# end


def sum_of_intervals(intervals)
  range = []
  intervals.each do |interval|
    range << (interval[0]..interval[-1]).to_a
  end
  range2 = range.sort.flatten
  p (range2[0]..range2[-1]).to_a.size
end

# def sum_of_intervals(intervals)
#   range = intervals.flatten
#   p all = (range[0]..range[-1]).to_a
# end
sum_of_intervals([[1, 5], [6, 10]])
sum_of_intervals([[1, 5]])
sum_of_intervals([[1,5], [10, 20], [1, 6], [16, 19], [5, 11]])
sum_of_intervals([[1, 5], [1, 5]])
sum_of_intervals([[1, 4], [7, 10], [3, 5]])