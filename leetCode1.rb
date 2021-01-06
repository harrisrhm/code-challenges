# Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

# Follow up: Could you implement a solution with a linear runtime complexity and without using extra memory?

# working solution
def single_number(nums)
  hash = {}
  nums.each { |num| hash.key?(num) ? hash.delete(num) : hash[num] = 1  }
  hash.key(1)
end

single_number([4,1,2,1,2])

# def single_number(nums)
# # p number = nums.each_with_object(Hash.new(0)) { |number, value| value[number] += 1 }
# # p number[1]
# end
