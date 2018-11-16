require ('rspec')
require ('pry')
require ('LanguageTest')


describe('LanguageTest#anagram?') do

  it('tests inputs for being equivalent') do
    words = LanguageTest.new("seat", "seat")
    expect(words.anagram?()).to(eq(true))
  end

  it('tests inputs for being an anagram') do
    words = LanguageTest.new("seat", "teas")
    expect(words.anagram?()).to(eq(true))
  end

  it('tests inputs for NOT being an anagram') do
    words = LanguageTest.new("tears", "teas")
    expect(words.anagram?()).to(eq(false))
  end

  it('tests inputs for case sensitivity') do
    words = LanguageTest.new("Seat", "Teas")
    expect(words.anagram?()).to(eq(true))
  end

  it('tests random words of different length for anigrams') do
    words = LanguageTest.new("table", "antiquity")
    expect(words.anagram?()).to(eq(false))
  end

  it('checks that given phrases are or are not anagrams') do
    words = LanguageTest.new("rail safety", "fairy tails")
    expect(words.anagram?()).to(eq(false))
  end

  it('anagrams are compared correctly independent of whitespaces') do
    words = LanguageTest.new("rail  safety", "fairy tales")
    expect(words.anagram?()).to(eq(true))
  end

  it('non-anagrams are correctly identified despite whitespace differences') do
    words = LanguageTest.new("rail  safety", "fairy tails")
    expect(words.anagram?()).to(eq(false))
  end

  it('tests inputs for being antigrams') do
    words = LanguageTest.new("treats", "blink")
    expect(words.anagram?()).to(eq("Your inputs appear to be antigrams!"))
  end

  it('tests inputs for NOT being antigrams') do
    words = LanguageTest.new("treats", "blinks")
    expect(words.anagram?()).to(eq(false))
  end

  it('tests inputs (multiple words) for being antigrams') do
    words = LanguageTest.new("hi dog", "bye cat")
    expect(words.anagram?()).to(eq("Your inputs appear to be antigrams!"))
  end

  it('tests inputs (multiple words) for NOT being antigrams') do
    words = LanguageTest.new("hi dogs", "bye cats")
    expect(words.anagram?()).to(eq(false))
  end

  it('tests regex\'s punctuation and whitespace removal') do
    words = LanguageTest.new("tom's hu!ngry", "mots hungry")
    expect(words.anagram?()).to(eq(true))
  end

  it('additional tests for regex\'s punctuation and whitespace removal') do
    words = LanguageTest.new("hi #dog's", "bye cat's!")
    expect(words.anagram?()).to(eq(false))
  end

  it('tests if input words are legitimate') do
    words = LanguageTest.new("anticheese", "cat")
    expect(words.anagram?()).to(eq("Make sure you input actual words!"))
  end

  it('tests if input words are legitimate') do
    words = LanguageTest.new("cheese", "anticat")
    expect(words.anagram?()).to(eq("Make sure you input actual words!"))
  end





end
