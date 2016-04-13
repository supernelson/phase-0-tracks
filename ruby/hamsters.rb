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
  if age == ""
    puts nil
  else
    puts age.to_i
end