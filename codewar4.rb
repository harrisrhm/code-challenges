# Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.

# Notes:

# Only lower case letters will be used (a-z). No punctuation or digits will be included.
# Performance needs to be considered

def scramble(s1, s2)
  # p s1.chars.include?(s2.chars)
  str1 = s1.chars
  str2 = s2.chars

  str3 = str1.map { |letter| str2.include?(letter) }
  p str3

  # p s2.chars == s1.chars ? true : false

  # s1.chars.select { |l| p s2.chars.include?(l) }
  # s1.sort.include?(s2.sort)
  # s1.downcase.split("")
  # str2 = s2.downcase.split("")
  # str1.each { |letter| p letter.include?(str2) }
  # s1.downcase.each do |l|
  #   str2 = s2.downcase.split(",")
  #   p l.include?(str2)
  # end
end

scramble('rkqodlw', 'world')