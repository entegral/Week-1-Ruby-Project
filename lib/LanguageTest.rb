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

    array_1 = convert_to_arrays_and_sanitize(@input_1)

    if compare_inputs == []
      return true
    elsif (compare_inputs.length == array_1.length)
      return "Your inputs appear to be antigrams!"
    else
      return false
    end
  end


  def convert_to_arrays_and_sanitize(input_string)
    regex = /[^a-zA-Z]+/

    input_clean = input_string.gsub(regex, "")
    input_array = input_clean.split("")

    return input_array
  end

  def compare_inputs
    input_1_array = convert_to_arrays_and_sanitize(@input_1)
    input_2_array = convert_to_arrays_and_sanitize(@input_2)
    input_2_array.each do |letter|
      if input_1_array.index(letter)
        input_1_array.delete_at(input_1_array.index(letter))
      end
    end
    input_1_array
  end


  def are_words?
    vowels = ["a", "e", "i", "o", "u", "y"]
    input_1_array = convert_to_arrays_and_sanitize(@input_1)
    input_2_array = convert_to_arrays_and_sanitize(@input_2)
    if vowels - input_1_array == vowels
      return false
    elsif vowels - input_2_array == vowels
      return false
    else
      return true
    end
  end


end
