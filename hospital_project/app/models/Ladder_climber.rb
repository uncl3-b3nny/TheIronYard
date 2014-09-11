Write a function that accepts a parameter for the amount of steps in a ladder. That function will tell me how many ways you can climb a ladder moving 1 step or 2 steps at a time.
puts "How many steps are there in the ladder?"
gets.chomp

how many ways can you count to a number given x = the_number, y = the number of base systems?

gets
# every possibility has one route that is unique to it's number
# every possibility has an additional possibility unique to each ...prime factor? yeah,I think so. 

#number of digits needed to complete the character set = the number of matrices required and the number of rows in each matrix matches the factorial factors of the number of digits needed to complete the character set
9

number_of_columns = input - number_of_binaries_possible
number_of_rows = summation(1:number_of_columns n-1)
#9 digits with only base 1's
1,1,1,1,1,1,1,1,1

# 8 digits with 8 base 1's & 1 binary
1,1,1,1,1,1,1,2
1,1,1,1,1,1,2,1
1,1,1,1,1,2,1,1
1,1,1,1,2,1,1,1
1,1,1,2,1,1,1,1
1,1,2,1,1,1,1,1
1,2,1,1,1,1,1,1
2,1,1,1,1,1,1,1

# 7 digits with 2 binaries
2,2,1,1,1,1,1
2,1,2,1,1,1,1
2,1,1,2,1,1,1
2,1,1,1,2,1,1
2,1,1,1,1,2,1
2,1,1,1,1,1,2
1,2,2,1,1,1,1
1,2,1,2,1,1,1
1,2,1,1,2,1,1
1,2,1,1,1,2,1
1,2,1,1,1,1,2
1,1,2,2,1,1,1
1,1,2,1,2,1,1
1,1,2,1,1,2,1
1,1,2,1,1,1,2
1,1,1,2,2,1,1
1,1,1,2,1,2,1
1,1,1,2,1,1,2
1,1,1,1,2,2,1
1,1,1,1,2,1,2
1,1,1,1,1,2,2

#6 digits with 3 binaries
2,2,2,1,1,1
2,2,1,2,1,1
2,2,1,1,2,1
2,2,1,1,1,2

2,1,2,2,1,1
2,1,2,1,2,1
2,1,2,1,1,2

2,1,1,2,2,1
2,1,1,2,1,2

2,1,1,1,2,2

1,1,1,2,2,2
1,1,2,1,2,2
1,1,2,2,1,2
1,1,2,2,2,1

1,2,1,1,2,2
1,2,1,2,1,2
1,2,1,2,2,1

1,2,2,1,1,2
1,2,2,1,2,1

1,1,1,2,2,2

1,1,2,2,2,2
1,2,1,2,2,2
1,2,2,1,2,2
1,2,2,2,1,2
1,2,2,2,2,1


#5 digits with 4 binaries

2,2,2,2,1
2,2,2,1,2
2,2,1,2,2
2,1,2,2,2
1,2,2,2,2 

# 7 digits with 1 trinary and 0 binary
3,1,1,1,1,1,1

3,2,2,1,1

3,3,3



6

1,1,1,1,1,1

1,1,1,1,2
1,1,1,2,1
1,1,2,1,1
1,2,1,1,1
2,1,1,1,1

2,2,1,1
2,1,2,1
2,1,1,2

1,1,2,2
1,2,1,2
1,2,2,1

2,2,2

#5

1,1,1,1,1

1,1,1,2
1,1,2,1
1,2,1,1
2,1,1,1

1,2,2
2,1,2
2,2,1

3,1,1
1,3,1
1,1,3

3,2
2,3


combinatorial?
#4 

1,1,1,1

1,1,2
1,2,1
2,1,1

2,2