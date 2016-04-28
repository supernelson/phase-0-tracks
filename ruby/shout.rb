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
    puts "pick a number between one and ten"
    if integer >= 5
      puts "you're being super loud bruh."
    elsif integer <= 5
      puts "speak up bruh I can't hear you."
    elsif integer == 5
      puts "you got great volume"
    end
  end
end

class Nelson
  include Volume
end

class Bear
  include Volume
end

class Fridge
  include Volume
end

nelson = Nelson.new
nelson.loudness(5)
p nelson.loudness(5)