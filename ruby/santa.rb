#Create a Santa class
class Santa
  p "Initializing Santa instance..."

#Add a the Attr Accessor and Attr Reader to replace the old getter and setter methods
  attr_accessor :gender, :name
  attr_reader :age, :ethnicity

#Initialize the default Santa characteristics
  def initialize(name, gender, ethnicity)
    @name = name
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_rank = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

#Behavioral method to speak
  def speak
    puts "#{@name}: 'Ho, ho, ho! Haaaappy holidays!'"
  end

#Behavioral method for milk & cookies
  def eat_milk_and_cookies
    puts "#{@name} thanks you for that great plate of snickerdoodles!"
  end

#Increment up the age by one year when celebrate birthday is called.
  def celebrate_birthday
    @age += 1
  end

#Find the index of the reindeer in the argument and push to the end of the array.
#Delete the original reindeer in the list.
#Relist the reindeers
  def get_mad_at(reindeer_name)
   @reindeer_rank << @reindeer_rank[@reindeer_rank.index(reindeer_name)]
   @reindeer_rank.index(reindeer_name)
   @reindeer_rank.delete_at(@reindeer_rank.index(reindeer_name))
   @reindeer_rank
  end

end

#Testing release 0
nelson = Santa.new("nelson", "male", "asian")
nelson.eat_milk_and_cookies
nelson.speak

#Release 1
santas = []
santas << Santa.new("james", "male", "black")
santas << Santa.new("george", "male", "Latino")
santas << Santa.new("andy", "bigender", "white")
santas << Santa.new("stephanie", "female", "Japanese")
santas << Santa.new("laura", "female", "prefer not to say")
santas << Santa.new("jaden", "gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("Bob", "N/A", "N/A")
p santas
p santas.length

#Release 3 testing attr_accessor & attr_reader
nelson.gender = "whiter than rice"
puts nelson.gender
puts nelson.age
puts nelson.name = "nelly"

#Release 4
## Office hours addition to test celebrate birthday over 2 years.
timing = 0
2.times do
  i = 0 #resets 1 on second times
  if timing > 0
    puts santas[i].name
    puts santas[i].celebrate_birthday
  end
  until i >= santas.length
    puts santas[i].name
    puts santas[i].celebrate_birthday
    i += 1
  end
   timing += 1
end

#Testing the get_mad_at method
rudy = Santa.new("rudy", "male", "asian")
rudy.get_mad_at("Prancer")
p rudy.name = "homer"
p rudy.age
p rudy.ethnicity

#Create an empty array
santas = []
#added in example data for names, genders, ethnicities
example_names = ["michael", "james", "trin", "pham"]
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

#Create 50 new santas with random assortment of example characteristics.
50.times do
  fifty_times = Santa.new(example_names.shuffle[0], example_genders.shuffle[0], example_ethnicities.shuffle[0])
  return fifty_times
end
#Print to console each santa instance
i = 0
  until i >= fifty_times.length
    puts fifty_times[i]
  end
