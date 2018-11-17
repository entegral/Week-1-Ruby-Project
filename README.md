## Anagrams

#### By _**Robert Bruce**_

## Description

_This project's objectives require that we use TDD to produce an Ruby application that tells a user whether or not two words are anagrams (or antigrams) of each other. If they are not anagrams or antigrams, then it tells you how they differ. This program uses a built in dictionary, provided by LetterPress Word List, under a CC0 license. It also includes a shell script that can be used in lieu of irb._

## Setup/Installation Requirements

* _Clone [this](https://github.com/entegral/Week-1-Ruby-Project.git) GitHub repo_
* _Install Bundler Gem and run 'bundle'_
* _Add executable privileges to the script:_
 >      chmod +x test_drive_anagram.rb
* _Run script and follow instructions:_
 >      ./test_drive_anagram.rb

* _Expected Output_
 >      "Your inputs are not anagrams because of these letters: a, b, c, d, e"
 >      "Your inputs appear to be antigrams!"
 >      "Make sure you input actual words!"

## Learning Objectives


- [x] Check if two words are anagrams. If they are, your method should return something like: "These words are anagrams."

- [x] Account for the possibility that words may have different cases, but should still be anagrams. For instance, "Tea" is still an anagram of "Eat".

- [x] Check if inputs are words. Words can only be anagrams or anagrams if they are, in fact, actually words! (For instance, "yurb" isn't an anagram of "ruby" because "yurb" isn't a real word.) A word must contain a vowel (a, i, e, o, u) or y. Otherwise it's not a word. If one of the inputs has no vowels, your method should return something like this: "You need to input actual words!" (You only need to write a rule for vowels; but you are welcome to add other rules as well.)

- [x] If phrases aren't anagrams, the method should check whether they are actually "antigrams." For our purposes, a word is an "antigram" of another word if no letters match. For example, "hi" has no matches with "bye". The method should return something like this if there are no letter matches: "These words have no letter matches and are antigrams."

- [x] Account for multiple words being anagrams or "antigrams." Spaces and punctuation shouldn't count (so they should be removed). You'll need to make sure that each word in the inputted phrases is really a word (passing condition #4 above). You may want to use a regular expression to remove additional characters.

## Further Objectives

- [x] Add shell script to permit live-use of anagram feature.

- [x] Use a dictionary to look up whether inputs are words.

- [x] If two phrases aren't anagrams, return how many letters from the argument are actual matches with the receiver. (Remember, receiver.method(arguments).) Use string interpolation. For instance, cat.anagram("batty") would return something like this: "These words aren't anagrams but 2 letters match: a, t."

- [x] Add rules to make sure inputs are actual words. For instance, there are no words in the English language that contain the same letter three consecutive times (eg "ccc"). Make up rules of your own and document them in your README.

- [x] Refactor your method to call multiple other methods. For instance, your anagram method might call a palindrome method to check if it is in fact a palindrome.


## Technologies Used
_Ruby 2.2.2_

### License
Copyright (c) 2018 **_Robert Bruce_** GNU General Public License 3.0
