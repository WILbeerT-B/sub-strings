dictionary = 
["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

word = "below"
#if dictionary.include?(word)
 # puts word
#end

word_array = []
  
for i in 0..word.length-1
  for j in 0..word.length-1
    if dictionary.include?(word[i..j].downcase)
      word_array.push(word[i..j].downcase)
    end
  end
end

puts word_array