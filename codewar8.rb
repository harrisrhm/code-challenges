# Where my anagrams at?

# Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array with words. You should return an array of all the anagrams or an empty array if there are none. For example:

# anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) => ['aabb', 'bbaa']

# anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) => ['carer', 'racer']

# anagrams('laser', ['lazing', 'lazy',  'lacer']) => []

#test 1
def anagrams(word, words)
  arr = []
  array = []
  words.each do |x|
    p x.split("")
  end
end

#test 2
def anagrams(word, words)
  arr = []
  array = []
  words.each do |x|
    arr << if x.split("").length == word.split(",").length && x.include?(word)
    array
  end
  arr
end

#test3
def anagrams(word, words)
 word.chars.sort 
 words.each do |w|
  p word.split("")
 end
end

#test4 - working!
def anagrams(word, words)
  arr = []
  words.each do |w|
      if w.chars.sort == word.chars.sort
        arr << w
      else
        []
      end
  end
  arr
end