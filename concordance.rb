######################################################################
# Assignment: Program #1: concordance
# Author: Dong Liang (dongliang@email.arizona.edu)
# Grader: Patrick Hickey / Andrea Padula
#
# Course: CSc 372
# Instructor: L. McCann
# Due Date: February 10, 2017
#
# Description: A ruby program that read from
# 	       a file.
#	       And do something.
#
# Language: Ruby
# Ex. Packages: None.
#
# Deficiencies: None.
######################################################################

#The method to print an array's members
	def printa(a)
	for i in 0...a.length	
	print ' '+a[i]
	end
	puts
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

#First get the keys as wordsort does	
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

#Use the sorted keys to build up a hashmap 
	sort(Sorted)
	#form(Sorted)

	map={}
	
	for i in 0...Sorted.length
	if map.key?(Sorted[i]) then
	else
	map[Sorted[i]]=Array.new
	end 
	end
	
#Insert elements into the map now
	
	line=1
	p=0	
	for j in 0...a.length-1
	
	asic=a[j].ord
	if asic==13 || asic ==10 then
	
	if p>0 then
	p+=1
	map[word] << '('+line.to_s+','+p.to_s+')'
	word=String.new
	line+=1
	p=0
	i=0
	else
	line+=1	
	end
	
	
 	elsif (asic >=48 and asic <= 57) or (asic >= 65 and asic <= 90) or (asic >= 97 and asic <= 122)
	i+=1
	word=word+a[j]
	

	else
	if asic ==45 and i>0 then
	i+=1
	word=word+a[j]

	elsif i>0
	p+=1 
	map[word] << '('+line.to_s+','+p.to_s+')'
	word=String.new
	i=0
	else
	end 
		
	end	
	end
	
	longsize=(map.keys.max_by(&:length)).length #Get the longest size of the keys
	
#Finally print the hashmap out as required
	for x in 0...map.keys.length

		print ' '*(longsize-map.keys[x].length)+map.keys[x]
		printa(map[map.keys[x]])
	
	end
