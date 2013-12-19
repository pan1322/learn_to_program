#Program to determine how many 'letters' (not characters) are in a person's full name.

puts 'What\'s your first name?'
f_name = gets.chomp
puts 'What\'s your middle name?'
m_name = gets.chomp
puts 'What\'s your last name?'
l_name = gets.chomp
full_name = f_name + m_name + l_name
puts 'Did you know your full name is comprised of ' + full_name.length.to_s + ' letters?'