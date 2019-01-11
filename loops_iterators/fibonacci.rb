def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

loop do
  print "Give us a fibonacci number: " 
  puts fibonacci(gets.chomp.to_i)
  print "Again? "
  break unless gets.chomp.downcase == "y"
end 
