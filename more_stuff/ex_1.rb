my_strings = ['laboratory', 'experiment', 'Pans Labyrinth', 'elaborate', 'polar bear']

my_strings.each do |str|
  puts str if str =~ /lab/
end
