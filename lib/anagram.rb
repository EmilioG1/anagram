class Word
  
  attr_accessor(:input, :hello, :result)

  def initialize(input, hello)
    @input = input.downcase
    @hello = hello.downcase
    @vowels = 'aeiou'
    @result = ''
  end


  def anagram
    if @input == @hello
      if ((@input.count @vowels) > 0) && ((@hello.count @vowels) > 0)
        input_array = @input.chars.sort
        hello_array = @hello.chars.sort
        true
      else
        false
      end
    else
      false
    end
  end
end


# check if two words have exact same letters but in different order
# make sure to downcase()
# check to make sure inputted words have vowels, return a message if there are no vowels ('not an actual word!')
# check if they are 'antigrams' -- none of the letters match -- and return a message
# check for sentences as well -- MUST REMOVE spaces and puncuation ... maybe a regex for punctuation?...

