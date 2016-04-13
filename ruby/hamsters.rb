puts "what is the hamster's name?"
  name = gets.chomp.to_s
puts "what is the volume level of this hamster from 1 to 10?"
  noise = gets.chomp.to_f
puts "what is its fur color?"
  fur_color = gets.chomp.to_s
puts "is this hamster a good candidate for adoption (yes or no)?"
  adoptability = gets.chomp.to_s
  if adoptability == "yes"
    adoptability = true
  else
    adoptability = false
end
puts "what is this hamster's estimated age?"
  age = gets.chomp
  if age > 0
    puts age
  else
    return nil
  end

print "#{name} is a #{age} year old hamster that makes noise at level #{noise}.#{name} fur color is #{fur_color}. #{adoptability}, #{name} is adoptable."