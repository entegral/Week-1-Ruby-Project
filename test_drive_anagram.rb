#!/usr/bin/env ruby

require ('./lib/LanguageTest')

def welcome
  puts '----------------------------------------------------------------------------'
  puts 'This script will allow you to test (in live time) whether or not two strings'
  puts 'are anagrams or antianagrams. If they are neither, then it will tell you by'
  puts 'how much they differ.'
  puts 'To quit, answer \'n\' at the prompt or press \'ctrl + c\' at anytime.'
  puts '----------------------------------------------------------------------------'
end

def get_input
  puts 'Please enter some text for your first input to compare: '
  first = gets.chomp

  puts 'Please enter some text for your second input to compare:'
  second = gets.chomp
  return first, second
end

continue = 'y'
while continue == 'y'
  input_1, input_2 = get_input
  anagram_test = LanguageTest.new(input_1, input_2)
  puts anagram_test.anagram?

  puts 'Would you like to try again? (y/n)'
  continue = gets.chomp

end
