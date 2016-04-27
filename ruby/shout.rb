module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yelling_happily(words)
    words + "! Yes yes yes yes yes!!! We did it! :)"
  end
end
p Shout.yell_angrily("nooooo")
p Shout.yelling_happily("WHOOOOOOOO HOOOOO")
