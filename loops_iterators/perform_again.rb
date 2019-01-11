loop do
  print "Do you want to do this again (Y/y to continue)? "
  break unless "y" == gets.chomp.downcase
end
