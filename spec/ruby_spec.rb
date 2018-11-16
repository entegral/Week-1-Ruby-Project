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

  it('tests a method for case sensitivity') do
    words = LanguageTest.new("Seat", "Teas")
    expect(words.anagram?()).to(eq(true))
  end

  it('checks that given words contain vowels') do
    words = LanguageTest.new("strng", "grnts")
    expect(words.anagram?()).to(eq("Make sure you input actual words!"))
  end

  it('checks that given phrases are or are not anagrams') do
    words = LanguageTest.new("rail safety", "fairy fales")
    expect(words.anagram?()).to(eq(false))
  end

  it('checks that given phrases are or are not anagrams') do
    words = LanguageTest.new("rail safety", "fairy tales")
    expect(words.anagram?()).to(eq(true))
  end

end
