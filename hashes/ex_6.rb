words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

=begin
One way to work out whether each word is an anagram is to take each word as a string and sort it. Words whose sorted strings match are anagrams.
So:
1. Store the anagrams in a hash. Each key is a set of sorted letters. Each value is an array of words whose sorted letters match the key.
    a. Create a new hash with a default value of a new array.
2. Iterate the array with each. In each iteration:
    a. Break the word into an array of its characters, sort the array, join the array back together again.
    b. Use the sorted word as the key, and the unsorted word as one array element of the value. Add the key/value pair to the hash.
3. Display the result.
=end

anagrams = Hash.new {|h,k| h[k]=[]}
words.each do |word|
  anagrams[word.chars.sort.join].push(word)
end

anagrams.each { |k, v| puts "key: #{k} value: #{v}" }