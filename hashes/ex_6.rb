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

Adding values to the hash turned out to be less obvious than I expected. I started by using store on an empty hash ({} rather than Hash.new, and it turns
out that you can't (?) use it to add an array element in the value. Using push or << simply failed to update the hash.

I looked at the solution at this point, and found that the workaround was to handle the first element in an array differently from the rest. This works, of course
(and from a pedagogical standpoint it isn't a good idea to dig into all this at a beginner's level), but I still wanted to find a solution that worked no matter what
state the hash was in. Eventually, I found an example of using Hash.new with += to append elements to the array. Hash.new, it seems, allows the specification
of an empty array as the default value (I had tried {[]} with no luck -- understandably, when I realized that I was trying to specify an empty hash with an empty
array in it), so it would seem that initializing a key/value pair with no value would use an empty array.
=end

anagrams = Hash.new([])

words.each do |word|
  anagrams[word.chars.sort.join] += [word]
end

anagrams.each { |k, v| puts "key: #{k} value: #{v}" }

=begin
But, it still didn't allow for push or <<, and I wanted to know why += works and the more usual ways to add array elements don't. So I did some more digging around.
Seems that +=, rather than mutating the array in place, actually creates a new array and replaces the old one with it. I expect that has something to do with why
it works and the others don't. I'll save a complete understanding for later, but my current hypothesis is that calling h[k].push attempts to push an element onto the default
array before it gets initialized as the default. Conversely, using +=, which replaces the array with a new one, happens further down the execution stream, and allows
the default to be specified before attempting to add the element.

Anyway, while that's all fine for this problem, it doesn't appear to be very efficient: constant re-initialization of arrays seems like it would be a lot of unnecessary overhead.
So, I dug a bit deeper, and found this solution online. This one allows the default empty array to be mutated in place, as I understand it. My hypothesis as to why it can
do this is that the block is executed immediately upon a new key/value pair being created, meaning that the empty array is in place at the point in time that the push
method executes.
=end

anagrams = Hash.new {|h,k| h[k]=[]}

words.each do |word|
  anagrams[word.chars.sort.join].push(word)
end

anagrams.each { |k, v| puts "key: #{k} value: #{v}" }

=begin
Finally, reading over various algorithms, I find that the one here that uses soting is an O(nLogn) solution, while an algorithm that counts the occurrences of each letter
is an O(n) solution. So, I had a stab at implementing one. I came up with the idea of adding the letters together, where a is one, b is two, and so on up to z is 26. Words
with the same letter count, I theorized, would be anagrams. I put a solution together, tested it, and found that "enno" and "eilv" both add up to 48! Well, darn. So, that
works great if each word has no more than one of a given letter. As I was tinkering around in my head with solutions that compare the count of each letter as well as the
"letter count," and solutions that keep a running total of each letter in an array, I decided that that was enough for now! That code is now in the junkyard, where it may be
useful as spare parts at some point. Interesting exercise! Apparently, it's often used as an inteview question, so now I will be prepared if it comes my way. Thanks for that.
=end