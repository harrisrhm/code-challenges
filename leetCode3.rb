# Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

# def max_sub_array(nums)
#   arr = []
#   nums.inject([0, -1]) do |sum, n|
#     p [sum[0] + n, sum[1] + 1]
#   end
# end

# def max_sub_array(nums)
#   nums.inject do |sum, n|
#     p sum + n
#   end
# end

def max_sub_array(nums)
  largest_sum,current = nums[0], 0
  nums.each{|x| largest_sum = [largest_sum, current=[x, current + x].max].max}
  largest_sum
end

max_sub_array([-2,1,-3,4,-1,2,1,-5,4])