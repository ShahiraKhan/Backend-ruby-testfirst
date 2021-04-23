def translate(words)
  # splitting the words and storing it in "words" as an array
  words = words.split
  # creating an empty array to push the pig latin words
  word_array = []
  # traversing through the words one by one
  words.each do |word|
    each_word = 
    # if a constonant is preceded by qu then all three are deleted and put at the last then "ay" is added
    if word.match /^.*qu/
       first_letters = word[/^.*qu/]
       last_letters = word.delete first_letters
       last_letters + first_letters + 'ay'
    else
      first_letters = word[/[^aeiou]*/]
      last_letters = word.delete first_letters
      last_letters + first_letters + 'ay'
    end
    word_array.push each_word
  end
  return word_array.join ' '
end  
#translate("the quick brown fox")