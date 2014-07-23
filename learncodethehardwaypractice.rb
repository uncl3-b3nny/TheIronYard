#for loops

the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

fruits.each do |fruit|
	puts " A type of fruit #{fruit}"
end


if turns_left > 0 
	entry_arrary.each_with_index do |loop_variable, index|
		until entry_arrary[index] > entry_arrary.length do
		
			if guess == entry_arrary[index]
				puts "Good guess!"
				puts blank_array.insert[index](guess)
				index += 1
				turns_left -= 1
				puts "You have #{turns_left} turns remaining! Guess again!"

					else
						index +=1
						turns_left -= 1
						puts "Nope! Guess again!"
						gets.chomp
			end
		end
	end

	else 
		puts "Game Over"
end