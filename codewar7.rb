# The rgb function is incomplete. Complete it so that passing in RGB decimal values will result in a hexadecimal representation being returned. Valid decimal values for RGB are 0 - 255. Any values that fall out of that range must be rounded to the closest valid value.

# Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.

# The following are examples of expected output values:


# rgb(255, 255, 255) # returns FFFFFF
# rgb(255, 255, 300) # returns FFFFFF
# rgb(0,0,0) # returns 000000
# rgb(148, 0, 211) # returns 9400D3

# Not working
# def rgb(r, g, b)
#  p [r, g, b].map { |x| x >= 0 && x <= 255 ? '%02X'%x.abs : x + 000 }.join
# end

# # def rgb(r, g, b)
# #  p sprintf("%02X", r, g, b)
# # end

# def rgb(r, g, b)
#   p [r, g, b].map { |x| x.to_s(16) }.join("").upcase
# end

# def rgb(r, g, b)
#   str = ""
#   p [r, g, b].map { |x| str << x.to_s(16).rjust(2, '0') }
# end

# def rgb(r, g, b)
#   str = ""
#   p [r, g, b].map { |x| str << x.to_s(16).rjust(2, '0') }
# end

# def rgb(r, g, b)
#   p [r, g, b].map { |x| x >= 0 && x <= 255 ? x.to_s(16) : x = 000 }.join("").upcase
# end

Working solutions
def rgb(*args)
  format('%.2X%.2X%.2X', *(args.map { |i| [[i, 255].min, 0].max }))
end

def rgb(*args)
  args.map do |x|
    x = 255 if x > 255
    x = 0 if x < 0
    x.to_s(16).upcase.rjust(2, '0')
  end.join
end