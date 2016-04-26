class Santa
  p "Initializing Santa instance..."

  def initialize(name, gender, ethnicity)
  @name = name
  @gender = gender
  @ethnicity = ethnicity
  end

  def name
    @name
  end

  def age
    age = 0
    @age = age
  end

  def speak
    p "#{@name}: 'Ho, ho, ho! Haaaappy holidays!'"
  end

  def eat_milk_and_cookies
    p "#{name} thanks you for that great plate of <type of cookie here>!"
  end

  def celebrate_birthday
    age + 1 #why can't i make it save & increment?
  end

  def get_mad_at(name)
    name.last
    reindeer_ranking.last #how does name affect reindeer_ranking?
  end

  def reindeer_ranking
    reindeer_rank = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
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
santas << Santa.new("N/A", "N/A", "N/A")
#p santas

i = 0
until i > santas.length
  p santas[i].name
  p santas[i].celebrate_birthday
  i += 1
end

p santas[1].get_mad_at("andy") #no method error
p reindeer_ranking