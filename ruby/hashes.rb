interior_designer = {
  name: "",
  age: "",
  children:"",
  decor_theme: "",
  paint: "",
  furniture: "",
}
puts "what is your name?"
interior_designer[:name] << gets.chomp.to_s
puts "what is your age?"
interior_designer[:age] << gets.chomp.to_s
puts "how many children do you have?"
interior_designer[:children] << gets.chomp.to_s
puts "what is your favorite decor theme?"
interior_designer[:decor_theme] << gets.chomp.to_s
puts "what's your favorite paint style?"
interior_designer[:paint] << gets.chomp.to_s
puts "whats furniture style do you like best?"
interior_designer[:furniture] << gets.chomp.to_s
puts interior_designer

puts "Would you like to change any of your answer?"
change = gets.chomp.downcase
if change == "yes"
  puts "pick one: name, age, children, decor_theme, paint, furniture."
  symbol = ":" + gets.chomp.downcase
  puts "what is your new answer?"
  new_answer = gets.chomp
  interior_designer[symbol] << new_answer
  puts interior_designer
else change == "none"
  puts interior_designer
end