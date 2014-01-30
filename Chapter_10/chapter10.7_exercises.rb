# 99 Bottles - Recursion

def english_number(number)
	if number < 0
		return "Please enter a number that isn't negative."
	end
	if number == 0
		return "zero"
	end

	num_string = ''

	ones_place = %w{one two three four five six seven eight nine}
	tens_place = %w{ten twenty thirty forty fifty sixty seventy eighty ninety}
	teenagers =  %w{eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}

	left  = number
	write = left/1000
	left = left - write*1000

	if write > 0
		thousands = english_number write
		num_string = num_string + thousands + ' thousand'
		if left > 0
			num_string = num_string + ' '
		end
	end

	write = left/100
	left  = left - write*100

	if write > 0
		hundreds = english_number write
		num_string = num_string + hundreds + ' hundred'
		if left > 0
			num_string = num_string + ' '
		end
	 end

	 write = left/10
	 left = left - write*10

	 if write > 0
	 	if ((write == 1) and (left > 0))
	 		num_string = num_string + teenagers[left-1]
	 		left = 0
	 	else
	 		num_string = num_string + tens_place[write-1]
	 	end

	 	if left > 0
	 		num_string = num_string + '-'
	 	end
	 end

	 write = left
	 left = 0

	 if write > 0
	 	num_string = num_string + ones_place[write-1]
	 end

	num_string.capitalize
end

def bottles_of_beer(number=10)
	if number > 0
		if number == 1
			puts "#{english_number(number)} bottle of beer on the wall. #{english_number(number)} bottle of beer. \nTake one down and pass it around...no more bottles of beer on the wall."
			number -= 1
		end
		if number == 2
			puts "#{english_number(number)} bottles of beer on the wall. #{english_number(number)} bottles of beer. \nTake one down and pass it around...#{english_number(number - 1)} bottle of beer on the wall."
			number -=1
			bottles_of_beer(number)
		end
		if number > 1
			puts "#{english_number(number)} bottles of beer on the wall. #{english_number(number)} bottles of beer. \nTake one down and pass it around.... #{english_number(number-1)} bottles of beer on the wall."
			number -= 1
			bottles_of_beer(number)
		end
	end
end

bottles_of_beer(15)
