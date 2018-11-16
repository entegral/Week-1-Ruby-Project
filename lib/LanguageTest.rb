class LanguageTest
  def initialize (input_1, input_2)
    @input_1 = input_1.downcase
    @input_2 = input_2.downcase
  end

  def anagram?
    # Check that given words are actual Words
    if !are_words?
      return "Make sure you input actual words!"
    end
    # split words into arrays
    compare_inputs
    if compare_inputs == []
      return true
    else
      return false
    end
  end

  def convert_to_array_and_sanitize
    if @input_1.split("").include?(" ")
      input_1_array = @input_1.split("")
      input_1_array.delete(" ")
    else
      input_1_array = @input_1.split("")
    end

    if @input_2.split("").include?(" ")
      input_2_array = @input_2.split("")
      input_2_array.delete(" ")
    else
      input_2_array = @input_2.split("")
    end
    return input_1_array, input_2_array
  end

  def compare_inputs
    input_1_array, input_2_array = convert_to_array_and_sanitize
    input_2_array.each do |letter|
      if input_1_array.index(letter)
        input_1_array.delete_at(input_1_array.index(letter))
      end
    end
    input_1_array
  end


  def are_words?
    vowels = ["a", "e", "i", "o", "u", "y"]
    input_1_array, input_2_array = convert_to_array_and_sanitize
    if vowels - input_1_array == vowels
      return false
    elsif vowels - input_2_array == vowels
      return false
    else
      return true
    end
  end


end
