#!/usr/bin/ruby
require 'set'
require_relative 'Car'
class ParkingLot
	
	def initialize
		@no_of_slots=0
		@slots=Array.new
		@available_slots=Set.new
	end

	def createSlots(n)
		@no_of_slots=n   		
		@no_of_slots.times do |i|
			@slots[i+1]=Hash.new 
			@slots[i+1].clear
			@available_slots.add(i + 1)
		end
		puts "Parking Lot create with #{@no_of_slots} empty slots"
	end

	def status()
		for i in 1..@no_of_slots do
			if @slots[i].empty?
				printStatus= "
+++++++++++++
=           +
=           +
=           +
=   Empty   +
=           +
=           +
=           +
+++++++++++++"
				puts printStatus
			else
				#puts "#{i}--> #{@slots[i][:RegNo]}, #{@slots[i][:Color]}"				
printStatus= "
+++++++++++++
=           +
=           +
=    #{@slots[i][:RegNo]}   +
=    #{@slots[i][:Color]}   +
=           +
=           +
=           +
+++++++++++++"
				puts printStatus
			end
		end
	end

	def findNearestFreeSlot()
		nearestEmptySlot = nil
		@available_slots = SortedSet.new(@available_slots)
		nearestEmptySlot = @available_slots.collect.first
		return nearestEmptySlot
	end

	def park(car)
		nearEmptySlot = findNearestFreeSlot()
		if nearEmptySlot != nil		
			@slots[nearEmptySlot] = car.properties

			puts "Please park your car at slot no #{nearEmptySlot}"
			@available_slots.delete(nearEmptySlot)
		else
			puts "Parking Full! Sorry for the inconvinience"
		end
	end

	def leave(slotNo)
		@slots[slotNo].clear
		@available_slots.add(slotNo)
	end

	def searchwithcolor(color)
		puts "Slot number of all cars with color: #{color}"
		for i in 1..@no_of_slots do  			
			if @slots[i][:Color] != nil
				if @slots[i][:Color] == color
					puts "Slot No #{i}--> #{@slots[i][:RegNo]}, #{@slots[i][:Color]}"
				end
			end
		end
	end

	def searchwithregno(regno)
		puts "Slot number of all cars with RegNo: #{regno}"
		for i in 1..@no_of_slots do  			
			if @slots[i][:RegNo] != nil
				if @slots[i][:RegNo] == regno
					puts "Slot No #{i}--> #{@slots[i][:RegNo]}, #{@slots[i][:Color]}"
				end
			end
		end
	end   	
end