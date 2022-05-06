require('rspec')
require('pry')
require('anagram')

describe('Word#anagram') do
  it('returns true if passed two letters') do
    x = Word.new('a', 'b').anagram
    puts x
    expect(x).to(eq(true))
  end

  it('will lowercase uppercased letters and return true') do
    x = Word.new('B', 'N').anagram
    puts x
    expect(x).to(eq(true))
  end
end