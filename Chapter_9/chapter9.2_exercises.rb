# Old-school roman numerals

def old_roman_numeral num_to_convert

	final_roman_numeral = []

	if num_to_convert >= 1000
		m_num = num_to_convert / 1000
	 	final_m_num = 'M' * m_num
	 	final_roman_numeral.push final_m_num
	end

	if num_to_convert / 500 >= 1
		if num_to_convert >= 1000
			d_num = num_to_convert % 1000 / 500
			final_d_num = 'D' * d_num
		else 
			final_d_num = 'D'
		end
		final_roman_numeral.push final_d_num
	end

	if num_to_convert / 100 >= 1
		if num_to_convert >= 500
			c_num = num_to_convert % 500 / 100
			final_c_num = 'C' * c_num
		else 
			final_c_num = 'C' * (num_to_convert / 100)
		end
		final_roman_numeral.push final_c_num
	end

	if num_to_convert / 50 >= 1
		if num_to_convert >= 100
			l_num = num_to_convert % 100 / 50
			final_l_num = 'L' * l_num
		else
			final_l_num = 'L'
		end
		final_roman_numeral.push final_l_num
	end

	if num_to_convert / 10 >= 1
		if num_to_convert >= 50
			x_num = num_to_convert % 50 / 10
			final_x_num = 'X' * x_num
		else
			final_x_num = 'X' * (num_to_convert / 10)
		end
		final_roman_numeral.push final_x_num
	end

	if num_to_convert / 5 >= 1
		if num_to_convert >= 10
			v_num = num_to_convert % 10 / 5
			final_v_num = 'V' * v_num
		else
			final_v_num = 'V'
		end
		final_roman_numeral.push final_v_num
	end

	if num_to_convert / 1 >= 1
		if num_to_convert >= 5
			i_num = num_to_convert % 5 / 1
			final_i_num = 'I' * i_num
		else
			final_i_num = 'I' * (num_to_convert / 1)
		end
		final_roman_numeral.push final_i_num
	end
	
	puts final_roman_numeral.join
end

old_roman_numeral 1999

# Quite a bit more complicated than the answer from the text. See below for text answer:

def new_roman_numeral num
	roman = ''

	roman = roman + 'M' * (num        / 1000)
	roman = roman + 'D' * (num % 1000 /  500)
	roman = roman + 'C' * (num % 500  /  100)
	roman = roman + 'L' * (num % 100  /   50)
	roman = roman + 'X' * (num % 50   /   10)
	roman = roman + 'V' * (num % 10   /    5)
	roman = roman + 'I' * (num % 5    /    1)

	roman
end
puts new_roman_numeral 1999

