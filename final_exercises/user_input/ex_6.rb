require 'io/console'

PASSWORD = 'password'

until IO.console.getpass("Password 1: ") == PASSWORD do
  puts 'Nope, sorry. Try again.'
end
puts 'Access granted 1.'

3.times do |i|
  if STDIN.getpass("Password 2: ") == PASSWORD
	puts 'Access granted 2.'
	break
  elsif i < 2
    puts "Strike #{i + 1}. Try again."
    next
  end
  puts 'Account locked, you hacker. Bye now.'
end
