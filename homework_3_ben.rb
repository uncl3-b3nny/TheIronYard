# a = rand (1..100)
# turns_left = 4

# puts "Guess a number between 1 and 100!"
# guess = gets.chomp.to_i

# while turns_left >= 0 

# 	if	guess == a
# 		puts "Good guess! You Win!"
# 		break
# 	elsif
# 		turns_left == 0
# 		puts "Game Over"
# 		break
# 	else 	
# 		turns_left -= 1
# 		if guess > a
# 			puts "Nope! Try a smaller number!"
# 			guess = gets.chomp.to_i
# 		else 
# 			puts "Nope! Try a larger number!"
# 			guess = gets.chomp.to_i
# 		end
# 	end
# end

#bugs how do i get gets.chomp to equal guess within my loop so that I don't have to subtract 1 from my turns_left

# horse race stuff

#I built these 3 loops to allow me to 1. construct and modify relationships between arrayed values, 2. repeat that construction and modificaiton as many times as I want, and 3. adapt my code by redefining external variables quickly and easily.

# This loop allows me to build and modify relationships between values in arrays by incrementing their index numbers. In this particular case I use it to add one attribute to another and save the sum as a new value for the former. It is essentially stacking one value onto the other every loop. 

a = [1,2,3,4]
b = [5,6,7]
x = 0
while a.length > x
  a[x] += b[x]
  x += 1
  puts a[x]
end

# This conditional checks to see if the modified array value has met the desired condition to stop modifying it. It either ends both loops, or resets the first loops array index variable to 0, and repeats this until the conditions to stop have been met. 

while a.length > y

if a[x] >= d
  z = a[x]
else
  z = 0
end

  x -= a.length
  y += z
end

# These are the necessary variables
array = [1,2,3]
t = array.length
x = 0
a = 0
b = 3
d = 0
c = 20
y = 0


  while array.length >= y
    while array.length > x
      a += b
      if a >= c
        z = a
      else
        z = 0 
      end

      x += 1 

    end

   x = 0
   y += z 
  end

#   p distance_traveled

#WHY does .length not work inside a conditional statement?

# Could I have just divided course by speed, and looped the output the appropriate number of times? Yes, but that wouldn't be very portable


        