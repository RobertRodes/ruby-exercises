def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = ''
denominator = ''

loop do
  print "Please enter the numerator: "
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts "Invalid input. Only integers are allowed."
end

loop do
  print "Please enter the denominator: "
  denominator = gets.chomp
  if denominator == '0'
    puts "Zero is not allowed in the denominator."
  else
    break if valid_number?(denominator)
    puts "Invalid input. Only integers are allowed."
  end
end

quotient = numerator.to_i / denominator.to_i
remainder = numerator.to_i % denominator.to_i

puts "#{numerator} / #{denominator} is #{quotient}#{0 == remainder ? '' : ' remainder ' + remainder.to_s}."