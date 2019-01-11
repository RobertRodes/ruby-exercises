def numrange(a)
  case 
    when a < 0
      "Less than zero"
    when a <= 50
      "Between zero and 50 inclusive"
    when a <= 100
      "Over 50 and less than or equal to 100"
    else
      "Over 100"
  end
end

print "Enter a number: "
puts numrange(gets.chomp.to_f)
