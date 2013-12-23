# Deaf Grandma

puts 'Hey sonny...it\'s me. Your deaf Grandma. How\'ve you been?'.upcase
response = gets.chomp.to_s

while response != 'bye'.chomp.upcase

	if response == response.chomp.upcase
		 puts 'No, not since '.upcase + (rand(1930..1950)).to_s + '!!'
	else puts 'Huh?! Speak up, Sonny!!'.upcase	
	end
	
	response = gets.chomp.to_s
end

puts 'Oh look at the time...bye!!!'.upcase



