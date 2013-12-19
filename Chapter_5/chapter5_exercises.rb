#to convert a variable to another form (e.g., string to integer, integer to float, string to float, etc.) use the following convention:
#to convert to a sting use .to_s
#to convert to an integer use .to_i
#to conver to a float use .to_f

var1 = 2
var2 = '5'

puts var1 + var2.to_i
puts var1.to_s + var2
puts var1.to_f * var2.to_f
puts var1.to_f * var2.to_i #if an expression conatins at least one float variable, the answer will be a float. Obviously no _s variables.

#puts var1.to_f * var2
#the above will give you an error because you can't multiply a _f * _s.

puts var2 * var1.to_f
#This will work because you can multiply a _s * _f. Answer in this case is '55'

puts 'Hello there, and what\'s your name?'
name = gets
puts 'Your name is ' + name + '? What a lovely name!'
puts 'Pleased to meet you, ' + name + '. :)'

#The gets method allows you to retrieve information from the user. In order for the user to input data, they must hit the 'enter' key, which
#will line break the string as noted when running the above program.
#Using the 'chomp' method will get rid of extraneous characters in the string. See below use of 'gets.chomp' method. 

puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '? What a lovely name!'
puts 'Pleased to meet you, ' + name + '. :)'


