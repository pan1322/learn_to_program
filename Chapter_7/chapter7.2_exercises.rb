# Deaf Grandma Extended

puts 'Hey sonny...it\'s me. Your deaf Grandma. How\'ve you been?'.upcase
bye_count = 0

while true
	response = gets.chomp.to_s

	if response == 'bye'.upcase
		bye_count = bye_count + 1
		puts 'No Honey. Not since '.upcase + (rand(1930..1950)).to_s + '!!'
	else 
		bye_count = 0
	end

	if bye_count >= 3
		puts 'Talk to you later Sonny!'.upcase
		break
	end

	if response != 'bye'.upcase
		if response == response.chomp.downcase || response == response.chomp.capitalize
			puts 'Speak up, Sonny!'.upcase
		else 
			puts 'No Honey. Not since '.upcase + (rand(1930..1950)).to_s + '!!'
		end
	end
	
end