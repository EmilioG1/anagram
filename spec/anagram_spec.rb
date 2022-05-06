require('rspec')
require('pry')
require('anagram')

describe('Word#anagram') do
  it('returns true if passed two of the same letters') do
    x = Word.new('a', 'a')
    expect(x.anagram).to(eq('Woaaah these are anagrams!'))
  end

  it('will compare uppercased letters and return true') do
    x = Word.new('A', 'A')
    expect(x.anagram).to(eq('Woaaah these are anagrams!'))
  end

  it('will check if letters are vowels') do
    x = Word.new('i', 'i')
    expect(x.anagram).to(eq('Woaaah these are anagrams!'))
  end

  it('will return true if letters are not vowels') do
    x = Word.new('t', 't')
    expect(x.anagram).to(eq('Nice try, but are both real words?'))
  end
  
    it('will check if more than one letter is passed into arguments') do
      x = Word.new('hello', 'olleh')
      expect(x.anagram).to(eq('Woaaah these are anagrams!'))
    end
  
    it('will check if words dont match up') do
      x = Word.new('whx', 'lst')
      expect(x.anagram).to(eq('Nice try, but are both real words?'))
    end

    it('will check if arguments arent real words') do
      x = Word.new('whx', 'whx')
      expect(x.anagram).to(eq('Nice try, but are both real words?'))
    end

    it('will check if arguments are real words but not anagrams') do
      x = Word.new('hello', 'bonjour')
      expect(x.anagram).to(eq('These are what we call antigrams'))
    end

    it('will check if arguments are real words but with only some similar letters') do
      x = Word.new('hello', 'hola')
      expect(x.anagram).to(eq('Big disappoint, these are not anagrams'))
    end
end