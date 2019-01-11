puts "Put in a number"
a = gets.chomp.to_i

answer = case a
when 5
  "a is 5"
when 6 
  "a is 6"
else 
  "a is neither 5 nor 6"
end

puts answer
