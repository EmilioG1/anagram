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
    if (@input == @hello) && (@input.length > 0 && @hello.length > 0)
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
      if @count1 > 0
        if @count2 > 0
          @result = 'Woaaah these are anagrams!'
        else
          @result = 'Nice try, but are both real words?'
        end
      else
        @result = 'Nice try, but are both real words?'
      end
    elsif (@input != @hello)
      @result = 'Big disappoint, these are not anagrams'
    else
      false
    end
    @result
  end
end
    
    
    # check if two words have exact same letters but in different order
    # make sure to downcase()
    # check to make sure inputted words have vowels, return a message if there are no vowels ('not an actual word!')
    # check if they are 'antigrams' -- none of the letters match -- and return a message
    # check for sentences as well -- MUST REMOVE spaces and puncuation ... maybe a regex for punctuation?...
