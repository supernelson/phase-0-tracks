# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yelling_happily(words)
#     words + "! Yes yes yes yes yes!!! We did it! :)"
#   end
# end
# p Shout.yell_angrily("nooooo")
# p Shout.yelling_happily("WHOOOOOOOO HOOOOO")

module Volume
  def loudness(integer)
    puts "Are you being loud?"
    if integer > 5
      puts "You're being super loud."
    elsif integer <= 5
      puts "Speak up! I can't hear you."
    elsif integer == 5
      puts "That's the perfect pitch"
    end
  end
end

class Person
  include Volume
end

class Bear
  include Volume
end

class Fridge
  include Volume
end

#same issue as flight.rb: my classes are not putting to console. But they don't fail either.
anna_kendricks = Person.new
anna_kendricks.loudness(5)

golden_bear = Bear.new
golden_bear.loudness(10)

cold_storage = Fridge.new
cold_storage.loudness(2)