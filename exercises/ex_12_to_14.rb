contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

=begin
A more scalable solution than the provided one, although it's a bit brittle in that it assumes that the contact data are in the same order as the contacts.
I did this as the solution to exercise 12, before reading exercise 14 and its hints. Since it solves the problem presented without any egregious coding sins,
I'll let it stand as the solution to 14 as well. Your solution is more elegant, though.
=end

keys = [:email, :address, :phone]

contacts.each_with_index do |(k, v), index|
  keys.length.times do |i|
    contacts[k][keys[i]] = contact_data[index][i]
  end  
end

#puts contacts

# Ex. 13
puts "Joe Smith's email is #{contacts["Joe Smith"][:email]}."
puts "Sally Johnson's phone number is #{contacts["Sally Johnson"][:phone]}."