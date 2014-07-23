puts "Enter a number between 1 and 100!"
a = gets.chomp.to_i

turns_left =5
min = 1
max = 100
random_generation = rand(min..max)

while turns_left >= 0 
	if	random_generation == a
		puts "Good guess! You Win!"
		break
	elsif
		turns_left == 0
		puts "Game Over"
		break
	else 	
		turns_left -= 1
		if random_generation > a
			min = 1
			max = random_generation
			random_generation = rand(min..max)
			random_generation
			puts random_generation
		else 
			random_generation < a
			max = 101
			min = random_generation
			random_generation = rand(min..max)
			random_generation
			puts random_generation
		end
	end
end