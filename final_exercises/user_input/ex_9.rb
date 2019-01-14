loop do

  print '>> How many lines (three or more; Q to quit)? '
  input = gets.chomp

  if input.downcase == 'q'
    puts 'Thanks for playing.'
    break
  elsif input.to_i.to_s != input # to_i converts alpha character to 0
    puts 'Numbers only, please, or q to quit.'
  elsif input.to_i < 3
    puts "That's not enough lines."
  else
    input.to_i.times { puts 'Launch School is the best!' }
  end
  
end
