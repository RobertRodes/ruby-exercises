USER_NAME = "admin"
PASSWORD = "password"

while true
  print "User Name: "
  un = gets.chomp
  print "Password: "
  pwd = gets.chomp
  break if un.downcase == USER_NAME && pwd == PASSWORD
  puts "Authorization Failed!"
end

puts "Hello!"