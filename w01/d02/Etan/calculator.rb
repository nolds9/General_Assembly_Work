puts "What number would you like to start with?"
first_number = gets.chomp.to_i
puts "Let's calculate! What would you like to do? | add | subtract | multiply | divide | exponent | square_root |."
choice = gets.chomp

def add(number)
	puts "How much would you like to add to #{number}?"
	new_num = gets.chomp.to_i
	puts "#{number + new_num}. Keep calculating by typing: | add | subtract | multiply | divide |."
end
	
def subtract(number)
	puts "How much would you like to subtract to #{number}?"
	new_num = gets.chomp.to_i
	puts "#{number - new_num}. Keep calculating by typing: | add | subtract | multiply | divide |."
end

def multiply(number)
	puts "How much would you like to multiply #{number} by?"
	new_num = gets.chomp.to_i
	puts "#{number * new_num}. Keep calculating by typing: | add | subtract | multiply | divide |."
end

def divide(number)
	puts "How much would you like to divide #{number} by?"
	new_num = gets.chomp.to_i
	puts "#{number / new_num}. Keep calculating by typing: | add | subtract | multiply | divide |."
end

def exponent(number)
	puts "How much would you like to raise #{number} to?"
	new_num = gets.chomp.to_i
	puts "#{number ** new_num}. Keep calculating by typing: | add | subtract | multiply | divide | exponent | square_root |."
end

def square_root(number)
	puts "#{Math.sqrt(number)}. Keep calculating by typing: | add | subtract | multiply | divide | exponent | square_root |."
end

if choice == "add"
	add(first_number)
elsif choice == "subtract"
	subtract(first_number)
elsif choice == "multiply"
	multiply(first_number)
elsif choice == "divide"
	divide(first_number)
elsif choice == "exponent"
	exponent(first_number)
elsif choice == "square_root"
	square_root(first_number)
else
	puts "You done goofed!"
end