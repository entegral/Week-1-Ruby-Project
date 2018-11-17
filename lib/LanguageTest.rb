class LanguageTest
  attr_accessor(:input_1)
  attr_accessor(:input_2)


  def initialize (input_1, input_2)
    @input_1 = input_1.downcase
    @input_2 = input_2.downcase
    @word_list = {}
    load_dictionary("en_words.txt")
  end


  def load_dictionary(file_path)
    File.open(file_path) do |file|
      file.each do |line|
        @word_list[line.strip] = true
      end
    end
  end


  def anagram?
    array_1 = input_to_letters_array_and_sanitize(@input_1)

    unless are_words?
      return "Make sure you input actual words!"
    end

    difference_1 = compare_inputs(input_1, input_2)
    difference_2 = compare_inputs(input_2, input_1)

    if difference_1 == []
      return "Your inputs appear to be anagrams!"
    elsif (difference_1.length == array_1.length)
      return "Your inputs appear to be antigrams!"
    else
      return "Your inputs are not anagrams because of these letters: #{(difference_1 + difference_2).join(", ")}"
    end
  end


  def input_to_letters_array_and_sanitize(input_string)
    regex = /[^a-zA-Z]+/

    input_clean = input_string.gsub(regex, "")
    input_array = input_clean.split("")

    return input_array
  end


  def input_to_words_array(input_string)
    regex = /[^a-zA-Z]+/
    clean_words_array = []
    words_array = input_string.split(" ")
    words_array.each do |word|
      clean_words_array.push(word.gsub(regex, ""))
    end
    clean_words_array
  end


  def compare_inputs(input_1, input_2)
    input_1_array = input_to_letters_array_and_sanitize(input_1)
    input_2_array = input_to_letters_array_and_sanitize(input_2)
    input_2_array.each do |letter|
      if input_1_array.index(letter)
        input_1_array.delete_at(input_1_array.index(letter))
      end
    end
    input_1_array
  end


  def are_words?
    input_1_array = input_to_words_array(@input_1)
    input_2_array = input_to_words_array(@input_2)

    input_1_array.each do |word|
      if @word_list.fetch(word, false)
        input_2_array.each do |another_word|
          return @word_list.fetch(another_word, false)
        end
      else
        return false
      end
    end
  end
end
