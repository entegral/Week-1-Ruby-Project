require ('rspec')
require ('pry')
require ('LanguageTest')


describe('LanguageTest#anagram?') do

  it('tests a word for being equivalent') do
    words = LanguageTest.new("seat", "seat")
    expect(words.anagram?()).to(eq(true))
  end

  it('tests a method for being an anagram') do
    words = LanguageTest.new("seat", "teas")
    expect(words.anagram?()).to(eq(true))
  end

end
