an_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

another_array = an_array.select { |x| x % 2 == 1 }

another_array.each do |x| 
  puts x
end
