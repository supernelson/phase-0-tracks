#Where's that self keyword we just learned about? When we're writing a module as a mixin designed to add instance methods to a class, we don't use the self keyword.
module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude.to_s}..."
  end
end

#OO why don't these print?
bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)


# class Bird
#   include Flight
# end

# class Plane
#   include Flight
# end

# bird = Bird.new
# p bird.take_off(800)

# plane = Plane.new
# p plane.take_off(30,000)