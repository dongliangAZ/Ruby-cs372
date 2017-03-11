######################################################################
# Assignment: Program #1: wordify
# Author: Dong Liang (dongliang@email.arizona.edu)
# Grader: Patrick Hickey / Andrea Padula
#
# Course: CSc 372
# Instructor: L. McCann
# Due Date: February 10, 2017
#
# Description: A ruby program that read from
# 	       sdi or a file.
#	       And print out as words.
#
# Language: Ruby
# Ex. Packages: None.
#
# Deficiencies: None.
######################################################################
	input=gets(nil)
	a=input.split("")
	i=0
	word=String.new	
	for j in 0...a.length
	
	asic=a[j].ord

 	if (asic >=48 and asic <= 57) or (asic >= 65 and asic <= 90) or (asic >= 97 and asic <= 122)
	i+=1
	word=word+a[j]

	else
	if asic ==45 and i>0 then
	i+=1
	word=word+a[j]

	elsif i>0 
	puts word 
	word=String.new
	i=0
	
	else
	end 
	
	
	end
	
	end
