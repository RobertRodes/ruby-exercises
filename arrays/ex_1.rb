arr = [1, 3, 5, 7, 9, 11]
print "Number? "
number = gets.chomp.to_i
puts "The number #{number} is " + (arr.include?(number) ? "" : "not ") + "in the array."
