=begin
This comes from trying to answer the question of how Ruby handles groups of JSON objects, and, by extension, data tables. Most of the doc I've found talks about how to manipulate
a single instance of a set of fields in multiple ways, which didn't help me get much of an understanding of how to iterate through a set of hashes whose members are analogous to a single
instance in a data table. So, I've set this up as a "sandbox" where I can try out various methods of manipulating simple table data.
=end

colors = 
	{
		color: "red",
		value: "#f00"
	},
	{
		color: "green",
		value: "#0f0"
	},
	{
		color: "blue",
		value: "#00f"
	},
	{
		color: "cyan",
		value: "#0ff"
	},
	{
		color: "magenta",
		value: "#f0f"
	},
	{
		color: "yellow",
		value: "#ff0"
	},
	{
		color: "black",
		value: "#000"
	}

puts "Colors:"
colors.each{ |x| puts x[:color] + ": " + x[:value] }
puts
puts "Colors2 (Colors sorted into new array)"
colors2 = colors.sort_by { |x| x[:color] }
colors2.each{ |x| puts x[:color] + ": " + x[:value] }
puts
puts "Colors sorted directly:"
colors.sort_by! { |x| x[:color] }
colors.each{ |x| puts x[:color] + ": " + x[:value] }

