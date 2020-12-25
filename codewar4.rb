# Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.

# Notes:

# Only lower case letters will be used (a-z). No punctuation or digits will be included.
# Performance needs to be considered

#Refactored solution
def scramble(s1, s2)
  # p s1.chars.include?(s2)
  p s2.chars.uniq.all?{ |letter| s2.count(letter) <= s1.count(letter) }
end

scramble('katas','steak')

# First solution but failed a test spec.
# def scramble(s1)
#   s1.chars.map { |letter| s2.chars.include?(letter) }.include?(false)
# end
