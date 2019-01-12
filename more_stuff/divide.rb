def divide(number, divisor)
  begin
    answer = number / divisor
    puts "#{number} over #{divisor} is #{answer}."
  rescue ZeroDivisionError => e
    puts e.message
  end
end

puts divide(16, 4)
puts divide(4, 0)
puts divide(14, 7)