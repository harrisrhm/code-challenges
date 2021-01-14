# Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

def max_sub_array(nums)
  nums.inject([0, -1]) do |sum, n|
    p arr = [sum[0] + n, sum[1] + 1]
  end
end


max_sub_array([-2,1,-3,4,-1,2,1,-5,4])