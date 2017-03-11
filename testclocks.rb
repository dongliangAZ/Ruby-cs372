######################################################################
# Assignment: Program #1: testclocks
# Author: Dong Liang (dongliang@email.arizona.edu)
# Grader: Patrick Hickey / Andrea Padula
#
# Course: CSc 372
# Instructor: L. McCann
# Due Date: February 10, 2017
#
# Description: the test program of clock and alarmclock
#
#
# Language: Ruby
# Ex. Packages: None.
#
# Deficiencies: None.
######################################################################

#Tests of clock class
myclock =Clock.new(17,26)
puts 'time is 17:26 and time is:'
puts myclock.formattime

myclock =Clock.new(12,12)
puts 'time is 12:12 and time is:'
puts myclock.formattime

myclock =Clock.new(3,06)
puts 'time is 3:06 and time is:'
puts myclock.formattime


#Tests of alarmclock class
myalarm=alarmclock.new(17,26)
puts 'time is 17:26 and time is:'
puts myalarmclock.formattime

myalarm=alarmclock.new(12,57)
puts 'time is 12:57 and time is:'
puts myalarmclock.formattime

myalarm=alarmclock.new(8,3)
puts 'time is 8:03 and time is:'
puts myalarmclock.formattime