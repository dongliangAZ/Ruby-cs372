######################################################################
# Assignment: Program #1: clock
# Author: Dong Liang (dongliang@email.arizona.edu)
# Grader: Patrick Hickey / Andrea Padula
#
# Course: CSc 372
# Instructor: L. McCann
# Due Date: February 10, 2017
#
# Description: Clock class
#
#
# Language: Ruby
# Ex. Packages: None.
#
# Deficiencies: None.
######################################################################

class Clock
#The constructor	
	def initialize(hours,minutes)
	@hours=hours
	@minutes=minutes
	end

	def gethour()
		@hours
	end
	
	def getminute()
		@minutes
	end
	

	def settime(h,m)
	@hours=h
	@minutes=m
	end


	def formattime
		str=''
		

	if hours ==12 then
	str= hours.to_s+':'+munite.to_s+'p'
	elsif hours < 12
	str=0.to_s+hours.to_s+':'+munite.to_s+'A'
	else
	str=(hours-12).to_s+':'+munite.to_s+'p'
	end
	
	p1=''
	p2=''
	p3=''
	
	for i in 0...str.length
	case str[i]
	when '0'
	p1+=' _ '
	p2+='| |'
	p3+='|_|'
	when '1'
	p1+='  |'
	p2+='  |'
	p3+=' _|'
	when '2'
	p1+=' _ '
	p2+=' _|'
	p3+='|_ '
	when '3'
	p1+=' _ '
	p2+=' _|'
	p3+=' _|'
	when '4'
	p1+='   '
	p2+='|_|'
	p3+='  |'
	when '5'
	p1+=' _ '
	p2+='|_'
	p3+=' _|'
	when '6'
	p1+=' _ '
	p2+='|_ '
	p3+='|_|'
	when '7'
	p1+=' _ '
	p2+='  |'
	p3+='  |'
	when '8'
	p1+=' _ '
	p2+='|_|'
	p3+='|_|'
	
	when '9'
	p1+=' _ '
	p2+='|_|'
	p3+=' _|'
	when ':'
	p1+='  '
	p2+=' . '
	p3+=' . '
	else
	p1+='   '
	p2+='   '
	p3+='   '
	end      #end of case
	end	 #end of for loop
	
	return p1+"\n"+p2+"\n"+p3+"\n"
	end

end