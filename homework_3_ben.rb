a = rand (1..100)
turns_left = 4

puts "Guess a number between 1 and 100!"
guess = gets.chomp.to_i

while turns_left >= 0 

	if	guess == a
		puts "Good guess! You Win!"
		break
	elsif
		turns_left == 0
		puts "Game Over"
		break
	else 	
		turns_left -= 1
		if guess > a
			puts "Nope! Try a smaller number!"
			guess = gets.chomp.to_i
		else 
			puts "Nope! Try a larger number!"
			guess = gets.chomp.to_i
		end
	end
end

#bugs how do i get gets.chomp to equal guess within my loop so that I don't have to subtract 1 from my turns_left