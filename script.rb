#!/usr/bin/ruby
require('./lib/anagram')

puts 'Welcome to the Anagram-a-game, where you will enter two words to see if they are anagrams of each other'
puts 'Please enter the first word'
input1 = gets.chomp.sub(/[!@#$%^&*()-=_+|;':",.<>?']/, '')
puts "You wrote #{input1}"
puts 'Please enter the second word'
input2 = gets.chomp.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '')
puts "you wrote #{input2}"
gram = Word.new(input1, input2)
puts "The result is... #{gram.anagram}"