#array of substrings
dictionary = 
["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
  #length of the string in word
  word_size = word.length-1
  
  #array to push all the matched strings
  word_array = []

  #iterate through the word  
  for i in 0..word_size
    for j in 0..word_size
      
      #remove empty strings
      if i > 0
        j += i
      end

      #check if part of the word is included in dictionary
      if dictionary.include?(word[i..j].downcase)
        #push to array if matched
        word_array.push(word[i..j].downcase)
      end

    end
    #decrement word size to remove empty strings
    word_size -= 1
  end

  #variable that will hold the result
  output = ''

  #reduce method to count each string in the word_array
  word_array.reduce(Hash.new(0)) do |result, item|
    result[item] += 1
    output = result
  end
  puts output
end

substrings("Howdy partner, sit down! How's it going?", dictionary)