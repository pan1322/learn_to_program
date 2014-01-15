# Building Sort Algorithm

def sort given_array
	recursive_sort given_array, []
end

def recursive_sort unsorted_array, sorted_array
	if unsorted_array.length <= 0
		return sorted_array			# Once the unsorted array has no further characters, the method returns the sorted array.
	end

	smallest = unsorted_array.pop
	still_unsorted = []

	unsorted_array.each do |tested_object|
		if tested_object < smallest
			still_unsorted.push smallest
			smallest = tested_object
		else
			still_unsorted.push tested_object
		end
	end
	
	sorted_array.push smallest
	recursive_sort still_unsorted, sorted_array
end

puts(sort(['once', 'twice', 'three', 'times', 'a', 'lady']))


