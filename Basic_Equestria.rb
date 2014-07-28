class Participants
    attr_accessor :species
    attr_accessor :name
    attr_accessor :position
    attr_accessor :speed
    attr_accessor :carrots
    attr_accessor :distance_traveled

  @@list_of_participants =[]

  def initialize
    self.species           = ""
    self.name              = ""
    self.position          = []
    self.speed             = []
    self.carrots           = []
    self.distance_traveled = []
  end

  def self.add_participants(*participant_attributes)

    #Get some settings
puts "Welcome to Equestria!"
puts "How many humans want to race a horse?"
humans = gets.to_i

puts "How many bots do you want to race against?"
bots = gets.to_i
total = bots + humans
  while total < 1 
    puts "Hmmm, it looks like you failed to enter any participants. Let's try that again. Please use positive, whole numbers. Only the first integer of fractions will be accepted, and decimals will be truncated."

    puts "How many humans want to race a horse?"
    humans = gets.to_i

    puts "How many bots do you want to race against?"
    bots = gets.to_i

    total = bots + humans
  end

    #How do I save default settings? Or make a settings menu?

    #build some horses

    n=0
    m=1
    o=1
    while n < humans 
      
      speed = rand (2..5)
      horse = Participants.new
      puts "Enter a name for horse #{m}!"
      name = gets.chomp
      if name == ""
        puts "It looks like you failed to enter a name for your horse. But that's ok, we'll just call him/her horse #{m}."
        horse.name = "horse#{m}"
        #is there any way to prevent duplicates?
      else horse.name = name
      end
      
      horse.species           = "horse"
      horse.position          = m
      horse.speed             = speed
      horse.carrots           = 2
      horse.distance_traveled = 0
      @@list_of_participants.push horse
      n += 1
      m += 1
    end

    #build some horse bots!

    while n < total 
      speed = rand (2..4)
      bot = Participants.new
      bot.species           = "bot"
      bot.name              = "bot_#{o}"
      bot.position          = m
      bot.speed             = speed
      bot.carrots           = 2
      bot.distance_traveled = 0
      @@list_of_participants.push bot
      n += 1
      o += 1
    end
    puts "Let the racing Begin!"
  end
  
  def self.access
    @@list_of_participants
  end
  add_participants 
end

#build some courses!
 
class Course
  attr_accessor :name
  attr_accessor :distance

   @@list_of_courses = []

  def initialize
    puts "#{name}"
    self.name       = ""
    self.distance     = []
  end

  def self.add_course
      t=0
    while t <3
    course = Course.new
         z = rand(20..30)
    course.name   = "Course_#{z}"
    course.distance = z
    @@list_of_courses.push course
    t += 1
    end
  end
  add_course

  def self.access 
    @@list_of_courses
    #sort this by position
  end

end

#Race!

def race course_array, participants_array
  ## this is horrendous. How many methods should this be? and how SHOULD it be broken down? 
a = participants_array.length
x = 0
d = 0
y = 0
  while a >= y
    while a > x
      if (participants_array[x].carrots > 0) && (participants_array[x].species == "horse")
      puts "Give #{participants_array[x].name} a carrot?"
      answer = gets.chomp.downcase
        while (answer != "yes") && (answer != "no")
        puts "Please enter either 'yes' or 'no'"
        answer = gets.chomp.downcase
        end

        if answer == "yes"
        participants_array[x].speed += 2
        participants_array[x].carrots -= 1
        end
      end
   
      participants_array[x].distance_traveled += participants_array[x].speed
   
      if participants_array[x].distance_traveled >= course_array[d].distance
        z = participants_array[x].distance_traveled
        x = a - 1
      else 
        z = 0
      end
      if z < 1 
        puts ("="*participants_array[x].distance_traveled+"> #{participants_array[x].name}")
      end
    x += 1
    end
    x = 0
    y += z
   end
end

race Course.access, Participants.access

Participants.access.sort!{ |y, x| x.distance_traveled <=> y.distance_traveled}

### list rankings, divvy out cash
winner = Participants.access[0].name
puts "#{winner} is the winner!"