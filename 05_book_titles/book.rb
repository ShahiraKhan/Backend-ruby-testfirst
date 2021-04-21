# Book class has method called titlieze, we call this in the setter.  
class Book
    attr_reader :title
    def title=(title)
      @title = titlieze(title)
    end  
    def titlieze(title)
      # these words are not to be capitalized when it appears in between the words
      small_words = %w[ a an and over in the of ]  
      # this is an array to store the title words(title) when we capitalize/not capitalize the words
      changed_title = [] 
      # we split the title into words and handle each words 
      @title = title.split.each_with_index do |w,i| 
      case 
        # first word is capitalized and pushed into the array
        when i == 0
          changed_title << w.capitalize
        # if word is not in small words list then capitalize  
        when i > 0 && !small_words.include?(w)
          changed_title << w.capitalize
        # if word is in small words list then push the word to the array  
        when small_words.include?(w)
          changed_title << w
        end
        #puts @title = changed_title.join(" ")
        changed_title.join(" ")
      end
      # this changed_title has the new changed title with the necessary capitalization
      @title = changed_title.join(" ") 
    end
end
  # new instance book of the Book Class is created
  book = Book.new
  book.title  = "to war and peace"


