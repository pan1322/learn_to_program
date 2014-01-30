# Shuffling

def shuffle shuffle_array

	shuffle_array.sort_by{rand}.join(', ')

end

puts shuffle %w{ one two three four five seven}
puts shuffle [1,2,3,4,5]