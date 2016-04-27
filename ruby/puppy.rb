##OFFICE HOURS - diff in CoderPad /IRB/Ruby.rb
  # def dog_years(integer)
  #   puts new_age = integer * 7
  #   #return new_age
  # end

class Puppy

  def initealize
    puts "Initializing new puppy instance..."
  end

  # When initialize is misspelled, it still runs the mehtods, but skips the initialize method with no error

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
      integer.times do
      puts "Woof"
    end
  end

  def roll_over
    puts "rolls over"
  end

  def dog_years(integer)
    puts integer * 7
  end

  def chase_tail(integer)
    puts "I'm dizzy from chasing my own tail #{integer} times"
  end

end

puppy1 = Puppy.new
puppy1.fetch("ball")
puppy1.speak(3)
puppy1.roll_over
puppy1.dog_years(2)
puppy1.chase_tail(30)

puppy2 = Puppy.new



class Basketball

  def initialize
    puts "Intializing the Basketball instance..."
  end

  def dribble(integer)
    if integer <= 2
      puts "Go for a layup!"
    else
      puts "Go for the three ball!"
    end
  end


  def substitute(player_on, player_off)
    puts "Now coming to the floor is #{player_on} for #{player_off}"
  end

end

nba1 = Basketball.new
nba1.dribble(4)
nba1.substitute("Kobe", "Randal")

nba2 = Basketball.new

def nba_data
i = 0
nba_data_structure = []
  until i >= 50
    nba_data_structure << nba1 = Basketball.new
    i += 1
  end
  p nba_data_structure
end
nba_data

nba_data.each do |a|
  nba.dribble(4)
  nba.substitute("kobe", "shaq")
end

