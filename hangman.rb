#Set game length
puts "Please type one of the following difficulty settings, then hit enter:
Easy
Medium
Hard"
difficulty = gets.chomp.downcase.capitalize

if difficulty == "Easy"
	turns_left = 15
	elsif difficulty == "Medium"
	 	 turns_left = 10
	 	elsif difficulty == "Hard" 
	 		turns_left = 5
	 	else puts "Sorry, that wasn't an option. Since you seem unable to follow even the simplest instructions, we'd better just set this to easy mode."
	 		turns_left = 15
end

#Prompt player 1 for a word/scrape a webpage for a random word/generate a random word.
puts "Player 1: Please enter a single word without player 2 seeing it!"
entry=gets.chomp # or this needs to be hidden from view

#create a string of blanks equal to the length of the entry and puts it
puts blank_array = "_ "*entry.length
#turn that string of blanks into an array of blanks
blank_array = blank_array.split(//)

#turn entry into an array
entry_arrary = entry.split(//)

#Ask the user for their guess
puts "Player 2: Guess a letter!"

#take their input and save it into a loop that checks for the letter in entry
guess = gets.chomp.to_s.downcase
if guess.length >1
	puts "It looks like you've entered more than one character, so we're just going to use the first one."
	else
end

#This fails to account for duplicate letters(assuming we want to be generous) and apparently .insert does not exist as I intend it to.
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

# still need to get the main block working, and hide/**** the player 1 entry or autogenerate content somehow
