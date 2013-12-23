# Leap Years

puts 'This program will list all of the leap years between two years. To get started, enter the starting year:'
start_year = gets.chomp.to_i
puts 'Enter the ending year:'
end_year = gets.chomp.to_i
puts ''

while start_year <= end_year
	if  start_year.to_i % 4 == 0 
		if  start_year.to_i % 100 != 0 || start_year.to_i % 400 == 0
			puts start_year
		end
	end
	start_year = start_year + 1
end