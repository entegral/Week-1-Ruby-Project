class LanguageTest
  def initialize (word1, word2)
    @word1 = word1.downcase
    @word2 = word2.downcase
  end

  def anagram?
     # split words into arrays
     word_1_array = @word1.split("")
     word_2_array = @word1.split("")
     if (word_1_array - word_2_array).length == 0
       return true
     else
       return false
     end
     # subtract arrays from each other, if remainder exists => return false
     # build hashes for each letter in each word
     # sort/count elements of hashes for comparison
  end
end
