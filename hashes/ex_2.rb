colors = 
  {
    red: "#f00_test",
    magenta: "#f0f",
    yellow: "#ff0",
    black: "#000"
  }

colors2 = 
  {
    red: "#f00",
    green: "#0f0",
    blue: "#00f",
    cyan: "#0ff"
  }


puts "colors.merge(colors2):"
puts colors.merge(colors2)
puts
puts "colors:"
puts colors
puts
puts "colors2:"
puts colors2
puts
puts "colors.merge!(colors2):"
puts colors.merge!(colors2)
puts
puts "colors:"
puts colors
puts
puts "colors2:"
puts colors2

=begin
So, using merge! instead of merge has the effect of assigning the result of the merge to the hash object variable that calls the merge method. These qre equivalent:
colors = colors.merge(colors2)
colors.merge!(colors2)
=end