# Updated Table of Contents Exercise

toc = 'Table of Contents'
chapters = [['Getting Started', 1],
			['Numbers', 		9],
			['Letters', 		13]]

chap_num = 1

puts toc.center(50)
puts ''

chapters.each do |chapter|
	chap_name = chapter[0]
	chap_page = chapter[1]

	beginning = 'Chapter ' + chap_num.to_s + ':   ' + chap_name
	ending = 'page ' + chap_page.to_s

	puts beginning.ljust(30) + ending.rjust(20)
	chap_num = chap_num + 1
end

