#echo method takes in hello and returns it
def echo(hello)
 return "#{hello}"
end  

#shout method takes in a default parameter and prints it as uppercase
def shout(param = "hello world")
   return "#{param.upcase}"
end  

#repeat method prints a word number of given times with a space in between 
def repeat(hello, times=2)  
   hello = "#{hello} "
   return (hello * times).strip
end  

# this method returns the substring of the word, the user can decide how many letters they need 
def start_of_word(hello, number_of_letters = 1)
  return "#{hello}"[0,number_of_letters]
end 
# this method removes all the blank spaces in a word
def first_word(words)
  return words.split[0]
 end
 
 # this method takes in the title and capitalize the starting letters of each word and doesn't capitalize the small words
def titleize(title="")
  sw = %w[ a an and over in the of to ] #small words which does not have to be capitalized
  return title.capitalize.gsub( /\S+/ ) { |w| sw.include?(w) ? w : w.capitalize }
end