def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def get_number(not_first)
  loop do
    print ">> Please enter a#{not_first ? 'nother' : ''} positive or negative integer: "
    int = gets.chomp
    return int if valid_number?(int)
    puts ">> Invalid input. Only non-zero integers are allowed."
  end  
end

int1 = nil
int2 = nil

loop do
  int1 = get_number(false).to_i
  int2 = get_number(true).to_i  
  break if int1.abs + int2.abs != (int1 + int2).abs
  puts ">> Sorry. One integer must be positive, one must be negative."
  puts ">> Please start over."
  puts
end
  
puts "#{int1} + #{int2} = #{int1 + int2}."
