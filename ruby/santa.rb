class Santa
  p "Initializing Santa instance..."
  age = 0
  def initialize(name, gender, ethnicity)
  @name = name
  @gender = gender
  @ethnicity = ethnicity

  end
  def speak
    p "#{@name}: 'Ho, ho, ho! Haaaappy holidays!'"
  end
  def eat_milk_and_cookies
    p "#{name} thanks you for that great plate of <type of cookie here>!"
  end
end
reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

santas = []
santas << Santa.new("james", "male", "black")
santas << Santa.new("george", "male", "Latino")
santas << Santa.new("andy", "bigender", "white")
santas << Santa.new("stephanie", "female", "Japanese")
santas << Santa.new("laura", "female", "prefer not to say")
santas << Santa.new("jaden", "gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A", "N/A")
p santas

santas.each do |name|
  name.to_s
  p "Santa's name is #{name}"
  #p "Santa is #{gender} and #{ethnicity}."
end
#how do i extract a name, gender, ethnicity without the enumerator?

