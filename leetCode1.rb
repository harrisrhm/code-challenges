# Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

# Follow up: Could you implement a solution with a linear runtime complexity and without using extra memory?

def single_number(nums)
  p nums.each_with_object(Hash.new(0)) { |number, value| value[number] += 1 }.find
  # final = hash.values.all? { |value| value == 9 }
  # final == true ? 'Finished!' : 'Try again!'
end

single_number([4,1,2,1,2])