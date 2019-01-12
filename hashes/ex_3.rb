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

colors.each {|k,v| puts k}
puts
colors.each {|k,v| puts v}
puts
colors.each {|k,v| puts "#{k}: #{v}"}
puts

#Which is all fine, but then ...
colors.each_key {|k| puts k}
puts
colors.each_value {|v| puts v}
puts
colors.each_pair {|k,v| puts "#{k}: #{v}"}
puts

#Style guide recommends each for both, and to use each_key and each_value when looking for one or the other, rather than each.
