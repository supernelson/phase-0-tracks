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

def nba_data
  i = 0
  nba_data_structure = []
  until i >= 50
    nba_data_structure << Basketball.new
    i += 1
  end
  nba_data_structure
end
nba_data.each do |nba|
  nba.dribble(4)
  nba.substitute("kobe", "shaq")
end

#Office Hours alternate solution with Times method
def nba_data2
  nba_data_structure = []
  50.times do |n|
    p n
    nba_data_structure << Basketball.new
  end
  nba_data_structure
end
p nba_data2

