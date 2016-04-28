class Santa
  p "Initializing Santa instance..."

  attr_accessor :gender, :name
  attr_reader :age, :ethnicity

  def initialize(name, gender, ethnicity)
    @name = name
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_rank = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end
#release 2
  ##COMMENTED OUT setter method
  # def gender=(new_gender)
  #   @gender= new_gender
  # end

  # def name=(new_name)
  #   @name = new_name
  # end

## COMMENTING OUT getter methods
  # def age
  #   @age
  # end

  # def ethnicity
  #   @ethnicity
  # end

  # def name
  #   @name
  # end


  def speak
    puts "#{@name}: 'Ho, ho, ho! Haaaappy holidays!'"
  end

  def eat_milk_and_cookies
    puts "#{@name} thanks you for that great plate of snickerdoodles!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
   @reindeer_rank << @reindeer_rank[@reindeer_rank.index(reindeer_name)]
   @reindeer_rank.index(reindeer_name)
   @reindeer_rank.delete_at(@reindeer_rank.index(reindeer_name))
   @reindeer_rank
  end

end
#testing release 0
nelson = Santa.new("nelson", "male", "asian")
nelson.eat_milk_and_cookies
nelson.speak
#release 1
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
#release 3 testing attr_accessor & attr_reader
nelson.gender = "whiter than rice"
puts nelson.gender
puts nelson.age
puts nelson.name = "nelly"
#release 4
timing = 0
2.times do
  i = 0 #resets 1 on second times
  if timing > 0
    p santas[i].name
    p santas[i].celebrate_birthday
  end

  until i >= santas.length
    p santas[i].name
    p santas[i].celebrate_birthday
    i += 1
  end
   timing += 1
end

#doesn't work on existing santas because enumerator issues...
rudy = Santa.new("rudy", "male", "asian")
rudy.get_mad_at("Prancer") #no method error
#calling my setter method
p rudy.name = "homer"
p rudy.age
p rudy.ethnicity

santas = []
example_names = ["michael", "james", "trin", "pham"]
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
2.times do
  santas << Santa.new(example_names.shuffle[0], example_genders.shuffle[0], example_ethnicities.shuffle[0])
end

p santas
##OFFICE HOURS ln 113 i have a setter - yet this errors out.
#p santas.name









# ## OFFICE HOURS
# # ['a','b','c','d','e']

# class Santa

#   def initialize(name, gender, ethnicity)
#     p "Initializing Santa instance..."
#     @name = name
#     @gender = gender
#     @ethnicity = ethnicity
#     @age = 0
#     @reindeer_rank = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
#   end

#   def name
#     @name
#   end

#   def speak
#     p "#{@name}: 'Ho, ho, ho! Haaaappy holidays!'"
#   end

#   def eat_milk_and_cookies
#     p "#{@name} thanks you for that great plate of snickerdoodles!"
#   end

#   def celebrate_birthday
#     @age += 1
#   end

#   def get_mad_at(reindeer_name)
#     # ruby move array position
#     # move element array ruby
#     #@reindeer_rank.insert(-1, #@reindeer_rank.delete_at(@reindeer_rank.index(reindeer_name)))
#     p @reindeer_rank << @reindeer_rank[@reindeer_rank.index(reindeer_name)]
#     this one deletes both the old and the new name
#     p @reindeer_rank.delete(reindeer_name)
#     # http://ruby-doc.org/core-2.2.0/Array.html#method-i-delete

#  # why does this pickup only 1 and not the new one at position last?
#     p @reindeer_rank.index(reindeer_name)
#     p @reindeer_rank.delete_at(@reindeer_rank.index(reindeer_name))
# #    p @reindeer_rank
#   end

# #setter method
#   def gender=(new_gender)
#     @gender= new_gender
#   end

#   def name=(new_name)
#     @name = new_name
#   end

# #getter methods
#   def age
#     @age
#   end

#   def ethnicity
#     @ethnicity
#   end

# end
# #testing release 0
# nelson = Santa.new("nelson", "male", "asian")
# # nelson.eat_milk_and_cookies
# # nelson.speak

# # santas = []
# # santas << Santa.new("james", "male", "black")
# # santas << Santa.new("george", "male", "Latino")
# # santas << Santa.new("andy", "bigender", "white")
# # santas << Santa.new("stephanie", "female", "Japanese")
# # santas << Santa.new("laura", "female", "prefer not to say")
# # santas << Santa.new("jaden", "gender fluid", "Mystical Creature (unicorn)")
# # santas << Santa.new("Bob", "N/A", "N/A")
# # #p santas
# # p santas.length #7

# # timing = 0
# # 2.times do
# #   i = 0 #resets 1 on second times
# #   if timing > 0
# #     p santas[i].name
# #     p santas[i].celebrate_birthday
# #   end

# #   until i >= santas.length
# #     p santas[i].name
# #     p santas[i].celebrate_birthday
# #     i += 1
# #   end
# #    timing += 1
# # end

# # #doesn't work on existing santas because enumerator issues...
# # rudy = Santa.new("rudy", "male", "asian")
# # rudy.get_mad_at("Prancer") #no method error
# # #calling my setter method
# # p rudy.name = "homer"
# # p rudy.age
# # p rudy.ethnicity