require ('rspec')
require ('pry')
require ('LanguageTest')


describe('LanguageTest') do 

  it('tests a method for LanguageTest') do

    dummy = LanguageTest.new()

    expect(dummy.method()).to(eq(expected result))

  end

end

