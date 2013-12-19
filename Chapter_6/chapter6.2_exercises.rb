#Table of contents program

line_width1 = 30
line_width2 = 20
line_width3 = 50
toc = ('Table of Contents'.center(line_width3))
chapter_1 = ('Chapter 1:   Getting Started'.ljust(line_width1)) + ('page  1'.rjust(line_width2))
chapter_2 = ('Chapter 2:   Numbers'.ljust(line_width1)) +         ('page  9'.rjust(line_width2))
chapter_3 = ('Chapter 3:   Letters'.ljust(line_width1)) +         ('page 13'.rjust(line_width2))
puts toc
puts ''
puts chapter_1
puts chapter_2
puts chapter_3

#by making the rjust line width less than the ljust line width if forces the computer to remove the 
#extra spaces in chapter 1 caused by the ' Started' characters in line 7 above.