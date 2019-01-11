def countdown(seed)
  puts seed
  seed -= 1
  return if seed < 0
  countdown(seed)
end

loop do
  print "Number? "
  x = gets.chomp.to_i
  break if x <= 0
  countdown(x)
end
