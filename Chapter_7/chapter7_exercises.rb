# 99 bottles of beer on the wall

puts 'Let\'s sing "99 Bottles of Beer on the Wall!"'
puts 'How many bottles would you like to start out with?'
bob = gets.chomp.to_i

while bob > 1
	puts bob.to_s + ' bottles of beer on the wall. ' + bob.to_s + ' bottles of beer. Take one down and pass it around... '
	bob = bob - 1
	if bob > 1
		puts bob.to_s + ' bottles of beer on the wall.'
	else puts bob.to_s + ' bottle of beer on the wall.'  	
	end  
	
	if bob == 1
		puts bob.to_s + ' bottle of beer on the wall.' + bob.to_s + ' bottle of beer. Take one down and pass it around... ZERO BOTTLES OF BEER ON THE WALLLLLLL!!!!!'
	end
end