# Horse_race

# horses race across your screen every time the user inputs.
# use a random generator to dictate horse's movement
# 3 are computers, 1 is you
user input must affect horse speed
# cheat codes: faster makes a horse of your choosing faster!
# (I can ask a question like from my quiz, and if they get it right, or pass my quiz, they go faster)

#####make a horse (Hidalgo) that ALWAYS wins, because the faster you go, the faster he goes. only way to win is to kill him AND cpu rider. )
# user must input his name for his horse
##could add prize money, make a circuit, and items to improve speed. 
 

 
 build race loop
 break if > x

User inputs
 :Robots
 :Humans
 :Course
 :Items
 :Sound_Effects


class Participants
    attr_accessor :species
    attr_accessor :name
    attr_accessor :position
    attr_accessor :horse
    attr_accessor :items

  @@list_of_participants = []

  def initialize
    self.species  = ""
    self.name     = ""
    self.position = []
    self.horse    = ""
    self.items    = ""
  end

  def self.add_participants(*participant_attributes)

    #User prompt to Start 
    ##I have a real problem with this block. my variable = "" is catching zeros as well as nils. How do I fix this? lol WOOOOW. Because "" [] are nil catch alls. and therefore can be nil prevent alls. done.
    puts "How many humans want to race?"
    humans = gets.to_i
    if (humans !=[]) && (humans != 0)
    puts "Oops, it looks you didn't enter a number, or you tried to enter a negative number, so we're just going to add 2 humans to the race. If this isn't what you want, quit and start over."
    humans = 2
    else humans
    end

    puts "How many robots do you want to race against?"
    robots = gets.to_i
    if (robots !=[]) && (robots != 0)
    puts "Oops, it looks you didn't enter a number, or you tried to enter a negative number, so we're just going to add 2 robots to the race. If this isn't what you want, quit and start over."
    robots = 2
    else  robots
    end

    if (robots == 0) && (humans == 0)
    puts "No one is racing! Quit and try again!"
    end

    @horses = robots + humans

    #build humans loop
    n=0
    while n < humans 
      puts "Enter a name for jockey #{n+1}!"
      name = gets.chomp
      human = Participants.new
      if name == ""
        puts "It looks like you failed to enter a name for your jockey. But that's ok, we'll just call him/her Jockey #{n+1}."
        human.name = "Jockey_#{n}"
        #is there any way to prevent duplicates?
      else human.name = name
      end
      human.species  = "human"
      human.position = [n]
      human.horse    = [n]
      human.items    = ""
      @@list_of_participants.push human
      n += 1
    end

    #build robots loop
    while n < robots 
      robot = Participants.new
      robot.species  = "cyborg"
      robot.name     = "robot_#{n}"
      robot.position = [n]
      robot.horse    = [n]
      robot.items    = ""
      @@list_of_participants.push robot
      n += 1
    end
    puts "Let the racing Begin!"
  end
end  

Items class
  attr_accessor :name ""
  attr_accessor :mod[]

def initialize
    puts "good choice!"
    self.name = ""
    self.mod  = []
  end

 Horse class 
  attr_accessor :name ""
  attr_accessor :speed []
  attr_accessor :stamina []
  attr_accessor :durability []
  attr_accessor :mod [] # can i make a bonus hash, that allows horses to change their speed according to conditional statements?

def initialize
    puts " Naaaaay!"
    self.name       = ""
    self.speed      = []
    self.stamina    = ""
    self.durability = []
    self.mod        = []
  end

Course class
  attr_accessor :name ""
  attr_accessor :length []
  attr_accessor :conditions [] #should i make a hash for easy, md, hard? or should i set a number and make each horse react to the number?

  def initialize
    puts "#{name}"
    self.name       = ""
    self.length     = []
    self.conditions = []
  end

#User prompt to Start 
  puts "How many humans want to race?"
    humans = gets.chomp
  puts "How many total horses do you want to have race?"
    total  = gets.chomp
    robots = total - humans
    horses = total

# add players
def add_participants(*participant_attributes)
  n=0

#build humans loop
  while n <= humans 
    puts "Enter a name for your character!"
    gets.chomp.to_s = Participants.new

    gets.chomp.to_s.species  = "human"
    gets.chomp.to_s.name     = "#{gets.chomp.to_s}"
    gets.chomp.to_s.position = [n]
    gets.chomp.to_s.horse    = "#{n}"
    gets.chomp.to_s.items    = ""
      @@list_of_participants.push gets.chomp.to_s
  n += 1
end

#build robots loop
while n <= robots 
  robot_[n] = Participants.new

    robot_[n].species  = "cyborg"
    robot_[n].name     = "#{robot_[n]}"
    robot_[n].position = [n]
    robot_[n].horse    = [n]
    robot_[n].items    = ""
      @@list_of_participants.push robot_[n]
  n += 1
end

#build horses loop
x=0
while x < total 
    horse_[x] = Horses.new

    horse_[x].name       = [x]
    horse_[x].speed      = []
    horse_[x].stamina    = []
    horse_[x].durability = []
    horse_[x].mod        = []
     @@list_of_participants.push horse_[x]

    #push each .new to an array as its made
  x += 1
end

#Build items loop
y = 0
while y < 2 
    item_[y] = Items.new

    item_[y].name = ""
    item_[y].mod  = []
## I want this loop to build me new items, but I want to be able to assign unique values to their names and mod []s. 
  #i.e. 'Carrot' +1 speed
  #     'stick'  +2 speed, -2 stamina. 
  x += 1
end

# Build a course
## Random or choose from a selection? or both? play a circuit? (again, random, pre-selected, or both?)
z = 0
course_[z] = Course.new

    course_[z].name = ""
    course_[z].length = []
    course_[z].conditions = []
# I again want to be able to build as many courses as I want, but i want to assign unique names, lengths, and conditions