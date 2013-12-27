# Alphabetical Order Exercise

puts ''
puts 'This program will return any set of supplied words in alphabetical order.' 
puts 'Enter as many words as you like and press \'return\' after each.'
puts 'Type \'Done\' (without quotes) when you are finished entering words to see your words in Alphabetical order!'

words_list = []

while true
	words = gets.chomp.to_s
	break if words == 'Done'
	words_list.push words
end

puts ''
puts 'Here are your words in alphabetical order...'
puts words_list.sort.join(', ')