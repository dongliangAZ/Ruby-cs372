######################################################################
# Assignment: Program #1: Hailstones
# Author: Dong Liang (dongliang@email.arizona.edu)
# Grader: Patrick Hickey / Andrea Padula
#
# Course: CSc 372
# Instructor: L. McCann
# Due Date: February 10, 2017
#
# Description: A ruby program that accepts a positive number from
# 	       command line and prints out
#	       the hailstones numbers and count the total numbers of
#              those. Also tells the max.
#
# Language: Ruby
# Ex. Packages: None.
#
# Deficiencies: None.
######################################################################

#
#getstr(n)--input a integer and returns a string of this integer but 6 length long
#
	def getstr (n)
	str=n.to_s
	len=str.length
	s=''
	for i in 1...(7-len)
		s+=' ' 
	end                    #end of the for loop
	
	s+str                  #return the spaces and the number combined as a string
end

i=ARGV[0].to_i
max=i	#the max of the sequece
num=1	#counter
l=0	#the number of each line

	puts 	'The hailstone sequence starting with '+i.to_s+':'
	puts

	if i<=0 then puts 'negative or 0 input makes infinite results'
	exit()
	elsif i==1 then puts '     1'
	else
		while i!=1 do
	
			if l==7 then 
				puts getstr(i)
				l=0			
			else	
				print getstr(i)
				l=l+1
			end			
					

			if i%2==1 then i=i*3+1
			else i=i/2
			end  #end of if statement
				
				if max<i then max=i
				else
				end
			num+=1
			end
			   #end of the while loop=>i=1;
			if l==7 then
                                puts getstr(i)
                        else
                                puts getstr(i)
                                end
	end
	puts ()
	puts 'There are '+num.to_s+' values; the largest is '+max.to_s+'.'
