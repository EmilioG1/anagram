class Word
  include Enumerable
  attr_accessor(:input, :hello, :result, :vowels)

  def initialize(input, hello)
    @input = input.downcase.split('').sort
    @hello = hello.downcase.split('').sort
    @vowels = ['a', 'e', 'i', 'o', 'u']
    @result = ''
    @count1 = 0
    @count2 = 0
  end


  def anagram
    @input.each do |char| 
      @vowels.each do |vowel|
        if char == vowel
          @count1 += 1
        end
      end
    end
    @hello.each do |c|
      @vowels.each do |v|
        if c == v
          @count2 += 1
        end
      end
    end
    if @count1 > 0 && @count2 > 0
      if (@input == @hello) && (@input.length > 0 && @hello.length > 0)
        @result = 'Woaaah these are anagrams!'
      elsif @count1 != @count2
        @result = 'Big disappoint, these are not anagrams'
      elsif @input.include?(@hello) == false
        @result = 'These are what we call antigrams'
      else
        false
      end
    else
      @result = 'Nice try, but are both real words?'
    end
    @result
  end
end
