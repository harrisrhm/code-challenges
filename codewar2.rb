##Complete the method/function so that it converts dash/underscore delimited words into camel casing. The first word within the output should be capitalized only if the original word was capitalized (known as Upper Camel Case, also often referred to as Pascal case).##

def to_camel_case(str)
  delimiters = Regexp.union(['-', '_'])
  str.split(delimiters).map.with_index{ |letter, index| index > 0 ? letter.capitalize : letter }.join
  p str
end

to_camel_case("the-stealth-warrior")
to_camel_case("The_Stealth_Warrior")