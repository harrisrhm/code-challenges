
#Take a Ten Minute Walk

## You live in the city of Cartesia where all roads are laid out in a perfect grid. You arrived ten minutes too early to an appointment, so you decided to take the opportunity to go for a short walk. The city provides its citizens with a Walk Generating App on their phones -- everytime you press the button it sends you an array of one-letter strings representing directions to walk (eg. ['n', 's', 'w', 'e']). You always walk only a single block for each letter (direction) and you know it takes you one minute to traverse one city block, so create a function that will return true if the walk the app gives you will take you exactly ten minutes (you don't want to be early or late!) and will, of course, return you to your starting point. Return false otherwise. ##

## TODO: some code here

def is_valid_walk(walk)
  directionVertical = 0
  directionHorizontol = 0
  totalWalk = walk.length
  
  walk.each do |direction|
    if direction == 'n' 
      directionVertical += 1
    elsif direction == 's'
      directionVertical -= 1
    elsif direction == 'w'
      directionHorizontal += 1
    elsif direction == 'e'
      directionHorizontal -= 1
    end
  end
  directionVertical == 0 && directionHorizontol == 0 && totalWalk == 10
end

# is_valid_walk(['n','s','n','s','n','s','n','s','n','s'])