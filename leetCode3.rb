# Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

def max_sub_array(nums)
  start = 0
  start_after_zero = 0
  arr = []
  nums.inject do |sum, n|
    if sum + v = start
      sum + v > 0
    end
  end
end

max_sub_array([-2,1,-3,4,-1,2,1,-5,4])