# "Modern" Roman Numeral Exercise

def old_roman_numeral num_to_convert

	thous_place     = (num_to_convert        / 1000)
	hunds_place     = (num_to_convert % 1000 /  100)
	tens_place      = (num_to_convert % 100  /   10)
	ones_place      = (num_to_convert % 10   /    1)

	roman = 'M' * thous_place

	if hunds_place >= 5
		if 	hunds_place == 9
			roman = roman + 'CM'
		else
			roman = roman + 'D' + 'C' * (hunds_place - 5)
		end
	end
	
	if hunds_place < 5
		if 	hunds_place == 4
			roman = roman + 'CD'
		else
			roman = roman + 'C' * hunds_place
		end
	end

	if tens_place >= 5
		if 	tens_place == 9
			roman = roman + 'XC'
		else
			roman = roman + 'L' + 'X' * (tens_place - 5)
		end
	end
	
	if tens_place < 5
		if 	tens_place == 4
			roman = roman + 'XL'
		else
			roman = roman + 'X' * tens_place
		end
	end

	if ones_place >= 5
		if 	ones_place == 9
			roman = roman + 'IX'
		else
			roman = roman + 'V' + 'I' * (ones_place - 5)
		end
	end

	if ones_place < 5
		if 	ones_place == 4
			roman = roman + 'IV'
		else
			roman = roman + 'I' * ones_place
		end
	end

	puts roman

end

old_roman_numeral 14