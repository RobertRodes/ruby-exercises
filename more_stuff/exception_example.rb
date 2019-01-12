names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
    puts zippedydoodah
  rescue NoMethodError
    puts "Got a NoMethodError, probably because you have a nil value in your input."
  rescue NameError
	puts "Warning: 'zippedydoodah' is not a valid variable"
	# raise
  end
  begin
	#puts 1/0
  rescue
	puts "Divzero error"
	#raise
  end
end