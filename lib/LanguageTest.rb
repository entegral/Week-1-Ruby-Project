class LanguageTest
  def initialize (word1, word2)
    @word1 = word1.downcase
    @word2 = word2.downcase
  end

  def anagram?
    # Check that given words are actual Words
    if !are_words?
      return "Make sure you input actual words!"
    end
     # split words into arrays
     word_1_array = @word1.split("")
     word_2_array = @word1.split("")
     if (word_1_array - word_2_array).length == 0
       return true
     else
       return false
     end
  end


  def are_words?
    vowels = ["a", "e", "i", "o", "u", "y"]
    word_1_array = @word1.split("")
    word_2_array = @word1.split("")
    if vowels - word_1_array == vowels
      return false
    elsif vowels - word_2_array == vowels
      return false
    else
      return true
    end
  end


end
