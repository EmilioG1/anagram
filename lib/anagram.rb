class Word
  include Enumerable
  attr_accessor(:input, :hello, :result, :vowels)

  def initialize(input, hello)
    @input = input.downcase.split('').sort
    @hello = hello.downcase.split('').sort
    @vowels = ['a', 'e', 'i', 'o', 'u']
    @result = ''
  end


  def anagram
    if (@input == @hello) && (@input.length > 0 && @hello.length > 0)
      @input.select {|x| x == @vowels}
        if @vowels.count > 0
          @hello.select {|y| y == @vowels}
            if @vowels.count > 0
              @result = 'this is an anagram!'
              true
            else
              @result = 'this is not a real word'
            end
        else
          @result = 'this is not a real word'
        end
    elsif (@input != @hello)
      @result = 'this is not an anagram'
      
    else
      false
    end
    # @result
  end
end
    
    
    # check if two words have exact same letters but in different order
    # make sure to downcase()
    # check to make sure inputted words have vowels, return a message if there are no vowels ('not an actual word!')
    # check if they are 'antigrams' -- none of the letters match -- and return a message
    # check for sentences as well -- MUST REMOVE spaces and puncuation ... maybe a regex for punctuation?...
