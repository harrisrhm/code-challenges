# The wave (known as the Mexican wave in the English-speaking world outside North America) is an example of metachronal rhythm achieved in a packed stadium when successive groups of spectators briefly stand, yell, and raise their arms. Immediately upon stretching to full height, the spectator returns to the usual seated position.

# The result is a wave of standing spectators that travels through the crowd, even though individual spectators never move away from their seats. In many large arenas the crowd is seated in a contiguous circuit all the way around the sport field, and so the wave is able to travel continuously around the arena; in discontiguous seating arrangements, the wave can instead reflect back and forth through the crowd. When the gap in seating is narrow, the wave can sometimes pass through it. Usually only one wave crest will be present at any given time in an arena, although simultaneous, counter-rotating waves have been produced. (Source Wikipedia)

# In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up. 

# 1.  The input string will always be lower case but maybe empty.

# 2.  If the character in the string is whitespace then pass over it as if it was an empty seat

# wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]


# def wave(str)
#   # Code here
#   arr = []
#   m = str.chars
#   m.each_with_index do |letter, index|
#     index = 0 
#     if index < m.length 
#       letter.capitalize
#       index += 1
#     end
#     arr << letter
#   end
#   arr
# end

#working solution (doesn't work on whitespace)
def wave(str)
  # Code here
  m = str.chars
  arr = []
  (0..m.length - 1).each do |i|
    arr << m.map.with_index { |letter, index| letter == " " next index == i ? letter.upcase : letter }.join("")
  end
  arr
end

# def wave(str)
#   # Code here
#   m = str.chars
#   arr = []
#   (0..m.length - 1).each do |i|
#     arr << m.map.each.with_index do |letter, index| 
#       if letter == " "
#       next index == i
#       letter.upcase
#       else 
#       letter
#       end
#     end
#   arr.join("")
#   end
# end

#working solution final
def wave(str)
  arr = []
  m = str.downcase.chars
  m.each_with_index do |letter, index|
    next if letter == " "
    arr << str[0...index] + letter.upcase + str[index+1..-1]
  end
  arr
end