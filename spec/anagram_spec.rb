require('rspec')
require('pry')
require('anagram')

describe('Word#anagram') do
  it('returns true passed two letters') do
    x = Word.new('a', 'b')
    expect(x.anagram).to(eq(true))
  end
end