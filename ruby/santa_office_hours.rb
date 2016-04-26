class Santa
  p "Initializing Santa instance..."

  def initialize(name, gender, ethnicity)
    @name = name
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_rank = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def name
    @name
  end

  def speak
    p "#{@name}: 'Ho, ho, ho! Haaaappy holidays!'"
  end

  def eat_milk_and_cookies
    p "#{@name} thanks you for that great plate of <type of cookie here>!"
  end

  def celebrate_birthday
    @age += 1 #why can't i make it save & increment?
  end

  def get_mad_at(reindeer_name)
   reindeer_name
   @reindeer_rank.last #how does name affect reindeer_ranking?
  end

end

nelson = Santa.new("nelson", "male", "asian")
santas = []
santas << Santa.new("james", "male", "black")
santas << Santa.new("george", "male", "Latino")
santas << Santa.new("andy", "bigender", "white")
santas << Santa.new("stephanie", "female", "Japanese")
santas << Santa.new("laura", "female", "prefer not to say")
santas << Santa.new("jaden", "gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("Bob", "N/A", "N/A")
#p santas

timing = 0
2.times do
  i = 0
  if timing > 0
    p santas[i].celebrate_birthday
  end

  until i >= santas.length
    p santas[i].name
    p santas[i].celebrate_birthday

    i += 1
  end
    timing += 1
end

p santas[1].get_mad_at("andy") #no method error