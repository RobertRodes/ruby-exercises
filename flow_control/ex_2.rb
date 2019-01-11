def upcaser(the_string)
  if the_string.length > 10 
    return the_string.upcase
  else
    return the_string
  end
end

print "Enter a string: "
puts upcaser(gets.chomp)
