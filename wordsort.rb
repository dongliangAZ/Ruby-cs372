######################################################################
# Assignment: Program #1: wordsort
# Author: Dong Liang (dongliang@email.arizona.edu)
# Grader: Patrick Hickey / Andrea Padula
#
# Course: CSc 372
# Instructor: L. McCann
# Due Date: February 10, 2017
#
# Description: A ruby program that read from
# 	       sdi or a file.
#	       And sort/print out as words.
#
# Language: Ruby
# Ex. Packages: None.
#
# Deficiencies: None.
######################################################################
	
#The method to write out the members of the input array to a file
	def writeArray(a,s)
	contents=''
	for i in 0...a.length	
	contents+=a[i]+"\n"
	end
	File.write(s,contents)
	end
#The method to show binary search
	def bsearch(a,s,m,n)

	middle=(m+n)/2

	if n<=m then
	return (s > a[m])? (m + 1): m
	

	elsif s==a[middle] 
	return middle+1

	elsif s>a[middle] 
	return bsearch(a,s,middle+1,n)
		
	
	else
	return bsearch(a,s,m,middle-1)
	
	end
	end		
	

#The method to do insertion sort of the input array
	def sort(a)
	
	for i in 1...a.length

	temp=a[i]
	j=i-1
	x=bsearch(a,temp,0,j)

	while j>=x do
	a[j+1]=a[j]
	j-=1
	end #This is for the while loop
	a[j+1]=temp
	end

	end
	
#main method starts from here

	input=ARGV[0].to_s
	
	file = File.open(input)
	text = ""
	file.each {|line|
  	text << line
	}

	a=text.split("")
	Sorted = Array.new
	i=0
	word=String.new
	
	for j in 0...a.length-1
	
	asic=a[j].ord

 	if (asic >=48 and asic <= 57) or (asic >= 65 and asic <= 90) or (asic >= 97 and asic <= 122)
	i+=1
	word=word+a[j]

	else
	if asic ==45 and i>0 then
	i+=1
	word=word+a[j]

	elsif i>0 
	Sorted << word 
	word=String.new
	i=0
	
	else
	end 
	
	
	end
	
	end
	
	sort(Sorted)
	filename=input.split(".")[0]+'-sorted.txt'
	writeArray(Sorted,filename)
