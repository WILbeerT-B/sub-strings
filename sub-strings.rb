dictionary = 
["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(word, dictionary)

  #word = "below"
  #word = "Howdy partner, sit down! How's it going?"

  word_size = word.length-1

  #if dictionary.include?(word)
  # puts word
  #end

  word_array = []
    
  for i in 0..word_size
    for j in 0..word_size
      
      if i > 0
        j += i
      end

      if dictionary.include?(word[i..j].downcase)
        word_array.push(word[i..j].downcase)
      end
      #puts word[i..j]
    end
    word_size -= 1
  end

  output = ''
  word_array.reduce(Hash.new(0)) do |result, item|
    result[item] += 1
    output = result
  end
  puts output
end

substring("Howdy partner, sit down! How's it going?", dictionary)