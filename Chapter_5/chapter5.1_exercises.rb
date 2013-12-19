#Section 5.6 of the text...'A Few Things to Try'

puts 'Hello, what\'s your first name?'
first_name = gets.chomp
puts 'Oh great, what\'s your middle name, ' + first_name + '?'
middle_name = gets.chomp
puts 'That\'s nice. What\'s your last name?'
last_name = gets.chomp
puts 'Wow! ' + first_name + ' ' + middle_name + ' ' + last_name + ' is a great name! Nice to meet you.'
puts 'Well, ' + first_name + '. What\'s your favorite number?'
favenum = gets.chomp.to_i
favenum2 = favenum + 1
puts 'Ooh snap! ' + favenum.to_s + ' sucks! That\'s a wimpy number. ' + favenum2.to_s + ' is a bigger and better number!'
puts 'I WIN, I WIN, I WIN!!!!' 

#It's important to remember that you must change an integer to a string when adding to a string.