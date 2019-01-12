colors = 
  {
    red: "#f00",
    green: "#0f0",
    blue: "#00f",
    cyan: "#0ff",
    magenta: "#f0f",
    yellow: "#ff0",
    black: "#000"
  }

#These all return true:
#The style guide says to use this one.
puts colors.value?("#f00") 
puts colors.has_value?("#f00")
puts !colors.rassoc("#f00").nil?
puts !colors.select { |k, v| v == "#f00"}.empty?
puts
#And these all return false:
puts colors.value?("#f01")
puts colors.has_value?("#f01")
puts !colors.rassoc("#f01").nil? 
puts !colors.select { |k, v| v == "#f01"}.empty?
