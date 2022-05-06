require('rspec')
require('pry')
require('anagram')

describe('Word#anagram') do
  it('returns true if passed two of the same letters') do
    x = Word.new('a', 'a').anagram
    puts x
    expect(x).to(eq(true))
  end

  it('will compare lowercase uppercased letters and return true') do
    x = Word.new('A', 'A').anagram
    puts x
    expect(x).to(eq(true))
  end

  it('will check if letters are vowels') do
    x = Word.new('i', 'i').anagram
    puts x
    expect(x).to(eq(true))
  end

  it('will return false if letters are not vowels') do
    x = Word.new('t', 'w').anagram
    puts x
    expect(x).to(eq(false))
  end

  it('will check if more than one letter is passed into arguments') do
    x = Word.new('at', 'ta').anagram
    puts x
    expect(x).to(eq(true))
  end
end