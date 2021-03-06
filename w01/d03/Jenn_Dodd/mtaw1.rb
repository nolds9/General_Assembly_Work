#LINE HASH

n = ['ts', '34th-n', '28th-n', '23rd-n', 'us', '8th-n']
l = ['8th-l', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us', 'a']
o = ['59th', '50th', 'ts', '34th-o', '28th']
mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s
mta[:o] = o

#METHOD SHOW STOPS WHEN LINE CHOSEN

def line_chooser(which_line)
	n_stops = "Times Square(ts), 34th(34th-n), 28th(28th-n), 23rd(23rd-n), Union Square(us), 8th(8th-n)"
	l_stops = "8th(8th-l), 6th(6th), Union Square(us), 3rd(3rd), 1st(1st)"
	s_stops = "Grand Central(gc), 33rd(33rd), 28th(28th-s), 23rd(23rd-s), Union Square(us), Astor(a)"
	case which_line
	when :n
		puts n_stops
	when :l
		puts l_stops
	when :s
		puts s_stops
	else
		puts "That's not a line!"
	end
end



#WELCOME AND CHOOSE ORIGIN LINE

puts "Welcome to the subway!"
puts "Which line would you like to start on?"
puts "(N), (L), 6(S)"
origin_line = gets.chomp.downcase.to_sym

#CHOOSE ORIGIN STATION

puts "Which station are you starting at?"

line_chooser(origin_line)

first_stop = gets.chomp

#SET ORIGIN AND GET INDEX

origin = mta[origin_line].index(first_stop)
puts origin


#CHOOSE DESTINATION LINE

puts "Which line would you like to end on?"
puts "(N), (L), 6(S)"
destination_line = gets.chomp.downcase.to_sym



if origin_line == destination_line
#SAME DESTINATION LINE AS ORIGIN LINE

	puts "Which station are you ending at?"
	line_chooser(destination_line)

	second_stop = gets.chomp

#SET DESTINATION AND GET INDEX

	destination = mta[destination_line].index(second_stop)
	puts destination

#FIND NUMBER OF STOPS (FOR ONE LINE)

	puts "It will take #{ (origin - destination).abs} stops."

else
#DIFFERENT DESTINATION LINE FROM ORIGIN LINE
#SET LENGTH TO US
	us1 = mta[origin_line].index("us")
#ASKS DESTINATION STATION
	puts "Which station are you ending at?"

	line_chooser(destination_line)

	second_stop = gets.chomp

#SET DESTINATION AND GET INDEX
	destination = mta[destination_line].index(second_stop)

#SET LENGTH FROM US
	us2 = mta[destination_line].index("us")

#FIND NUMBER OF STOPS (FOR TWO LINES)
	result = (origin - us1).abs + (destination - us2).abs

	puts "It will take #{result} stops."

end


