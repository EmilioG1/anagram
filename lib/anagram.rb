class Word
  
  attr_accessor(:input, :hello)

  def initialize(input, hello)
    @input = input.downcase
    @hello = hello.downcase
    @vowels = ['a', 'e', 'i', 'o', 'u']
  end


  def anagram
    if (@input.length == @hello.length) && (@vowels.index(@input)) && (@vowels.index(@hello))
      # if (@input.length > 1) && (@hello.length > 1)
      true
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